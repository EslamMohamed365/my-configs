# My Configuration Files (Dotfiles) ✨

Welcome to my personal dotfiles repository! This collection houses my meticulously crafted configuration files for various applications and tools, designed to create a consistent, efficient, and aesthetically pleasing working environment on my Linux system.

---

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Why Use These Dotfiles?

Managing your configuration files in a single, version-controlled repository offers several advantages:

- **Seamless Consistency:** Effortlessly synchronize your personalized setup across multiple Linux machines—just clone this repository and enjoy a familiar, polished environment everywhere.
- **Easy Customization:** Tweak your environment to suit your workflow, with clear documentation and modular configs.
- **Rapid Recovery:** Quickly restore your environment after a fresh install or system failure.
- **Learning Resource:** Explore well-commented configs to discover new tools, tips, and best practices.
- **Easy Customization:** Tweak your environment to suit your workflow, with clear documentation and modular configs.
- **Rapid Recovery:** Quickly restore your environment after a fresh install or system failure.
- **Learning Resource:** Explore well-commented configs to discover new tools, tips, and best practices.

---

## Prerequisites

Before installing, make sure you have:

- **Git** installed for cloning the repository.
- **Supported applications** (e.g., Neovim, Tmux, Sway, etc.) installed on your system.
- **Backup** of any existing configuration files you may want to preserve.

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

# النسخة العربية

مرحبًا بك في مستودع إعداداتي الشخصية (dotfiles)! يحتوي هذا المستودع على ملفات الإعدادات الخاصة بي لمجموعة متنوعة من التطبيقات والأدوات، بهدف توفير بيئة عمل متناسقة وفعّالة وجذابة على نظام لينكس.

---

## جدول المحتويات

- [المميزات](#المميزات-1)
- [التركيب](#التركيب)
- [الاستخدام](#الاستخدام-1)
- [المساهمة](#المساهمة-1)
- [الرخصة](#الرخصة-1)

## لماذا تستخدم هذه الإعدادات؟

إدارة ملفات الإعدادات في مستودع واحد وتحت نظام تحكم بالإصدارات يمنحك عدة مزايا:

- **تناسق سهل:** يمكنك مزامنة إعداداتك الشخصية على أكثر من جهاز لينكس بسهولة.
- **تخصيص سريع:** عدل بيئتك كما تحب مع توثيق واضح وملفات منظمة.
- **استعادة فورية:** استرجع إعداداتك بعد أي تثبيت جديد أو مشكلة في النظام.
- **مصدر تعليمي:** استكشف ملفات مشروحة وتعرف على أدوات ونصائح جديدة.

---

## المتطلبات

قبل التثبيت تأكد من وجود:

- **Git** مثبت على جهازك.
- **التطبيقات المدعومة** (مثل Neovim، Tmux، Sway، إلخ).
- **نسخة احتياطية** من أي إعدادات سابقة ترغب في الاحتفاظ بها.

---

## المميزات

تم بناء هذه المجموعة من ملفات الإعدادات مع التركيز على التنظيم، الجمال، والوظائف العملية. من أبرز المزايا:

- 🚀 **هيكلية منظمة:** كل إعدادات تطبيق في مجلد خاص بها.
- 🌙 **دعم ثيم TokyoNight:** معظم الإعدادات معدة مسبقًا لهذا الثيم الجميل والمريح للعين.
- 🛠️ **دعم تطبيقات أساسية:**
    - **Neovim (nvim):** إعدادات قوية ومخصصة.
    - **Tmux:** لإدارة الجلسات الطرفية.
    - **Sway:** مدير نوافذ Wayland.
    - **Waybar:** شريط Wayland قابل للتخصيص.
    - **Rofi:** مشغل تطبيقات وقوائم.
    - **Zellij:** مساحة عمل طرفية حديثة.
    - **Yazi:** مدير ملفات طرفية سريع.
    - **EditorConfig:** توحيد أنماط الكود.
    - ...وغيرها الكثير!

### معاينة

| Neovim (LazyVim) | Sway |
| :---: | :---: |
| ![Neovim Preview](https://user-images.githubusercontent.com/292349/213447056-92290767-ea16-430c-8727-ce994c93e9cc.png) | ![Sway Preview](https://user-images.githubusercontent.com/9502378/126228243-1cf4af9a-9eb1-4e51-a1ff-160fa44c0fa1.png) |

---

## التركيب

لتثبيت هذه الإعدادات على جهازك اتبع الخطوات التالية:

```bash
# 1. استنساخ المستودع إلى مجلد الإعدادات
 git clone https://github.com/your-username/my-config.git ~/.config/my-config

# 2. انتقل إلى المجلد
 cd ~/.config/my-config

# 3. شغّل سكريبت التثبيت
 bash install.sh
```

**⚠️ ملاحظة مهمة:** قبل تشغيل `install.sh` يُنصح بمراجعة محتواه (`cat install.sh`) لمعرفة التغييرات التي سيجريها. هذا السكريبت ينشئ روابط رمزية من هذا المستودع إلى مجلدات الإعدادات في مجلدك الشخصي.

---

## الاستخدام

بعد التثبيت ستلتقط التطبيقات الإعدادات الجديدة تلقائيًا. قد تحتاج إلى:

- إعادة تشغيل التطبيق (مثل Neovim، Tmux).
- تسجيل الخروج والدخول مجددًا أو إعادة تشغيل الجهاز لبعض التغييرات (خاصة Sway و Waybar).

يمكنك استكشاف وتعديل أي ملف إعدادات حسب رغبتك، جميع الملفات مشروحة ومنظمة.

---

## المساهمة

ملاحظاتك ومساهماتك مرحب بها دائمًا! إذا كان لديك اقتراح أو واجهت مشكلة أو ترغب في إضافة إعدادات لتطبيقات أخرى، لا تتردد في:

- فتح issue
- إرسال pull request

---

## الرخصة

هذا المشروع مرخص تحت رخصة MIT. راجع ملف [LICENSE](LICENSE) للمزيد من التفاصيل.

---