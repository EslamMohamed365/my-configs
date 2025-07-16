# My Personal Dotfiles

This repository contains my personal configuration files for various tools and applications on a Linux system. The setup is tailored for a tiling window manager environment (Sway) with a consistent Tokyo Night theme.

## Installation

**Warning:** Before proceeding, it is highly recommended to back up your existing configuration files. This script will create backups of any conflicting files, but manual backups are always a good practice.

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/my-config.git ~/.dotfiles
    cd ~/.dotfiles
    ```

2.  **Run the installation script:**
    ```bash
    ./install.sh
    ```
    The script will automatically create symbolic links for the configuration files and directories. It will also back up any existing files that would be overwritten.

## Software Configuration

This repository includes settings for the following software:

| Software      | Description                                       |
|---------------|---------------------------------------------------|
| **Sway**      | A tiling Wayland compositor                       |
| **Waybar**    | A highly customizable Wayland bar for Sway        |
| **Neovim**    | A modern, highly extensible text editor (LazyVim) |
| **Ghostty**   | A modern, GPU-accelerated terminal emulator       |
| **Zellij**    | A terminal multiplexer                            |
| **Tmux**      | A terminal multiplexer                            |
| **Bash**      | The GNU Bourne-Again Shell                        |
| **Starship**  | A minimal, fast, and infinitely customizable prompt |
| **Eza**       | A modern replacement for `ls`                     |
| **Yazi**      | A terminal file manager                           |
| **FZF**       | A command-line fuzzy finder                       |
| **Lazygit**   | A simple terminal UI for git commands             |
| **Rofi/Wofi** | Application launchers and menus                   |
| **Dunst**     | A lightweight notification daemon                 |
| **Fastfetch** | A fast, feature-rich system information tool      |
| **Bpytop**    | A resource monitor                                |
| **MPV**       | A free and open-source media player               |
| **GTK/Qt**    | Theming for graphical applications                |
| **Kanshi**    | A dynamic display configuration tool for Wayland  |
| **Logid**     | Logitech device manager for advanced features     |
