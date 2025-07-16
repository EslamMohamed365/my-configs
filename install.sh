#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Variables and Configuration ---

# Determine the script's directory to resolve absolute paths.
# This ensures the script can be run from anywhere.
DOTFILES_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# List of files/directories to symlink to the user's home directory.
# Format: "source_in_repo;target_in_home"
# Example: ".config/nvim;.config/nvim" will link ~/.dotfiles/.config/nvim to ~/.config/nvim
readonly files_to_link=(
    ".bashrc;.bashrc"
    ".tmux.conf;.tmux.conf"
    ".vimrc;.vimrc"
    ".editorconfig;.editorconfig"
    ".config/bpytop;.config/bpytop"
    ".config/dunst;.config/dunst"
    ".config/eza;.config/eza"
    ".config/fastfetch;.config/fastfetch"
    ".config/fontconfig;.config/fontconfig"
    ".config/fzf;.config/fzf"
    ".config/ghostty;.config/ghostty"
    ".config/gtk-2.0;.config/gtk-2.0"
    ".config/gtk-3.0;.config/gtk-3.0"
    ".config/gtk-4.0;.config/gtk-4.0"
    ".config/kanshi;.config/kanshi"
    ".config/lazygit;.config/lazygit"
    ".config/mpv;.config/mpv"
    ".config/neofetch;.config/neofetch"
    ".config/nvim;.config/nvim"
    ".config/qt5ct;.config/qt5ct"
    ".config/rofi;.config/rofi"
    ".config/starship;.config/starship"
    ".config/sway;.config/sway"
    ".config/vim;.config/vim"
    ".config/waybar;.config/waybar"
    ".config/wofi;.config/wofi"
    ".config/yazi;.config/yazi"
    ".config/zellij;.config/zellij"
)

# List of files/directories that require sudo privileges to link to system paths.
# Format: "source_in_repo;absolute_target_path"
readonly sudo_files_to_link=(
    "etc/logid.cfg;/etc/logid.cfg"
    "usr/share/themes/TokyoNight;/usr/share/themes/TokyoNight"
)

# --- Helper Functions ---

# A function to print messages with a consistent format.
info() {
    printf "INFO: %s\n" ""$1""
}

# A function to print success messages.
success() {
    printf "✅ SUCCESS: %s\n" ""$1""
}

# A function to print warning messages.
warning() {
    printf "⚠️ WARNING: %s\n" ""$1""
}

# A function to create symbolic links, handling backups and directory creation.
create_symlink() {
    local source_path=""$1""
    local target_path=""$2""
    local use_sudo=""$3""
    local cmd_prefix=""

    if [[ ""$use_sudo"" == ""sudo"" ]]; then
        cmd_prefix="sudo "
    fi

    # Ensure the source file/directory exists
    if [[ ! -e ""$source_path"" ]]; then
        warning "Source file not found: ""$source_path"". Skipping."
        return
    fi

    # Create parent directory of the target if it doesn't exist
    local target_dir
    target_dir=$(dirname ""$target_path"")
    if [[ ! -d ""$target_dir"" ]]; then
        info "Creating directory: ""$target_dir""
        ${cmd_prefix}mkdir -p ""$target_dir""
    fi

    # If the target already exists, back it up
    if [[ -e ""$target_path"" || -L ""$target_path"" ]]; then
        local backup_path=""${target_path}.bak_$(date +%Y%m%d%H%M%S)""
        info "Backing up existing ''"$target_path"'' to ''"$backup_path"''"
        ${cmd_prefix}mv ""$target_path"" ""$backup_path""
    fi

    # Create the symbolic link
    info "Linking ''"$source_path"'' to ''"$target_path"''"
    ${cmd_prefix}ln -s ""$source_path"" ""$target_path""
}

# --- Main Script Logic ---

main() {
    info "Starting dotfiles installation..."
    info "Dotfiles repository found at: ""$DOTFILES_DIR""
    printf "\n"

    # --- Symlink user-level files ---
    info "Linking user configuration files to ""$HOME""..."
    for item in ""${files_to_link[@]}""; do
        IFS=';' read -r source target <<< ""$item""
        create_symlink ""$DOTFILES_DIR/$source"" ""$HOME/$target""
    done
    printf "\n"

    # --- Symlink system-level files with sudo ---
    if [[ ""${#sudo_files_to_link[@]}"" -gt 0 ]]; then
        info "Linking system-wide configuration files (requires sudo)..."
        # Check for sudo privileges upfront
        if ! sudo -v; then
            warning "Sudo credentials not provided. Cannot link system files."
            exit 1
        fi

        for item in ""${sudo_files_to_link[@]}""; do
            IFS=';' read -r source target <<< ""$item""
            create_symlink ""$DOTFILES_DIR/$source"" ""$target"" ""sudo""
        done
        printf "\n"
    fi

    success "Dotfiles installation complete!"
    info "Old configuration files were backed up with a .bak extension."
    info "You may need to restart your shell or log out for all changes to take effect."
}

# Run the main function
main