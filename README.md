# 🎨 Termux Theme Switcher

Easily customize your Termux terminal appearance with a variety of preconfigured themes like Dracula, Nord, One Dark, Monokai, Gruvbox, and more. This script provides an interactive menu for users to apply their favorite theme in one click.

---

## 📌 Features

- 🧪 15+ Predefined terminal color schemes
- 🎛 Interactive menu for theme selection
- ⚡ Instant application with `termux-reload-settings`
- 🧱 Creates `~/.termux/colors.properties` automatically
- 📱 Designed for Termux on Android

---

## 🛠 Requirements

- Termux (Android terminal emulator)
- `termux-api` and storage permission (if you want full customization)

---

## 📥 Installation & Usage

```bash
pkg update && pkg upgrade -y
pkg install git -y
git clone https://github.com/ak-alien/T-theme
cd T-theme
chmod +x T-theme.sh
./T-theme.sh
```

---

## 🖌 Available Themes

- Modified Dracula
- Solarized Dark & Light
- Monokai
- Nord
- One Dark
- Gruvbox Dark
- Material
- Palenight
- Horizon Dark
- Default

---

## ⚠️ Disclaimer

This script is safe and open source. However, modifying terminal themes may require restarting Termux or reloading settings.

---

## 📜 License

This project is licensed under the MIT License.
