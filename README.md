# My Configuration Files (Dotfiles) ✨

Welcome to my personal dotfiles repository! This collection houses my meticulously crafted configuration files for various applications and tools, designed to create a consistent, efficient, and aesthetically pleasing working environment on my Linux system.

---

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Features

This dotfiles collection is built with a focus on modularity, aesthetics, and functionality. Key highlights include:

- 🚀 **Modular Structure:** Configurations are neatly organized by application, making them easy to manage, update, and understand.
- 🌙 **TokyoNight Theme Integration:** A significant portion of these configurations are pre-configured to embrace the beautiful and eye-friendly TokyoNight color scheme, ensuring a cohesive visual experience across your tools.
- 🛠️ **Key Application Support:** Includes tailored configurations for a wide array of essential tools:
    - **Neovim (nvim):** My powerful and highly customized text editor setup.
    - **Tmux:** For robust terminal multiplexing and session management.
    - **Sway:** A dynamic and efficient Wayland compositor.
    - **Waybar:** A highly customizable Wayland bar.
    - **Rofi:** A versatile application launcher and menu.
    - **Zellij:** A modern terminal workspace.
    - **Yazi:** A fast and intuitive terminal file manager.
    - **EditorConfig:** Ensuring consistent coding styles across different editors and IDEs.
    - ...and many more!!

### Previews

| Neovim (LazyVim)                                                                                                       | Sway                                                                                                                  |
| :--------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------- |
| ![Neovim Preview](https://user-images.githubusercontent.com/292349/213447056-92290767-ea16-430c-8727-ce994c93e9cc.png) | ![Sway Preview](https://user-images.githubusercontent.com/9502378/126228243-1cf4af9a-9eb1-4e51-a1ff-160fa44c0fa1.png) |

---

## Installation

Getting these dotfiles set up on your system is straightforward. Follow these steps to clone the repository and automate the symlinking process:

```bash
# 1. Clone the repository to your home directory
git clone https://github.com/your-username/my-config.git ~/.config/my-config

# 2. Navigate into the cloned directory
cd ~/.config/my-config

# 3. Run the automated installation script
bash install.sh
```

**⚠️ Important Note:** Before running `install.sh`, it is highly recommended to review its contents (`cat install.sh`) to understand the changes it will make to your system. This script is designed to create symbolic links from this repository to the appropriate configuration directories in your home folder.

---

## Usage

Once installed, your applications should automatically pick up the new configurations. For some changes to take full effect, you might need to:

- Restart the specific application (e.g., Neovim, Tmux).
- Log out and log back in, or even reboot your system, especially for display server configurations (Sway, Waybar).

Feel free to dive into the individual configuration files within the `.config/` directory. They are commented where necessary to help you understand and further customize them to your liking.

---

## Contributing

Your feedback and contributions are always welcome! If you have suggestions for improvements, encounter any issues, or would like to add configurations for other applications, please feel free to:

- Open an issue
- Submit a pull request

---

## License

This project is proudly licensed under the MIT License. See the [LICENSE](LICENSE) file for full details.

---
