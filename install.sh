#!/bin/bash

# Dotfiles installation script

# Variables
DOTFILES_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# List of files/dirs to symlink in ~
# Format: "source_in_repo;target_in_home"
files_to_link=(
    ".bashrc;.bashrc"
    ".tmux.conf;.tmux.conf"
    ".vimrc;.vimrc"
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

# List of files/dirs that require sudo
# Format: "source_in_repo;target_path"
sudo_files_to_link=(
    "etc/logid.cfg;/etc/logid.cfg"
    "usr/share/themes/TokyoNight;/usr/share/themes/TokyoNight"
)

echo "Starting dotfiles installation..."
echo "Source directory: $DOTFILES_DIR"

# Function to create symlinks
create_symlink() {
    local source_path="$1"
    local target_path="$2"
    local target_dir
    local use_sudo="$3"
    local cmd_prefix=""

    if [ "$use_sudo" = "sudo" ]; then
        cmd_prefix="sudo "
    fi

    target_dir=$(dirname "$target_path")

    # If target exists, back it up
    if [ -e "$target_path" ] || [ -L "$target_path" ]; then
        echo "Backing up existing $target_path"
        ${cmd_prefix}mv "$target_path" "$target_path.bak_$(date +%Y%m%d%H%M%S)"
        echo "A backup was created: $target_path.bak_..."
    fi

    # Create parent directory if it doesn't exist
    if [ ! -d "$target_dir" ]; then
        echo "Creating directory: $target_dir"
        ${cmd_prefix}mkdir -p "$target_dir"
    fi

    # Create symlink
    echo "Linking $source_path to $target_path"
    ${cmd_prefix}ln -s "$source_path" "$target_path"
    echo "---"
}

# --- Symlink user-level files ---
echo
echo "Linking user configuration files..."
for item in "${files_to_link[@]}"; do
    IFS=';' read -r source target <<< "$item"
    create_symlink "$DOTFILES_DIR/$source" "$HOME/$target"
done

# --- Symlink system-level files with sudo ---
if [ ${#sudo_files_to_link[@]} -gt 0 ]; then
    echo
    echo "The following files require sudo privileges to link."
    echo "You may be prompted for your password."
    for item in "${sudo_files_to_link[@]}"; do
        IFS=';' read -r source target <<< "$item"
        create_symlink "$DOTFILES_DIR/$source" "$target" "sudo"
    done
fi


echo "✅ Installation complete!"
echo "Old configuration files were backed up to their original location with a .bak extension."
echo "You may need to restart your session for all changes to take effect."
