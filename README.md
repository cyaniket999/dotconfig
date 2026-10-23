<div align="center">

# 🌿 .config

*Clean, modular, and performance-focused dotfiles for X11 tile & stack environments.*

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-blueviolet?logo=archlinux&logoColor=white)](https://archlinux.org)
[![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

<br />

<img src="assets/1.png" alt="Desktop Showcase" width="90%">

</div>

---

## 🎨 Overview

Personal configuration files tailored for a minimal, lightweight, and keyboard-driven desktop experience. Included are prebuilt scripts for `dwm` status bars, live theme changing, custom status blocks, and tuned configurations for dynamic window managers.

### Featured Environments & Apps

* **Window Managers:** `dwm` · `bspwm` · `Openbox`
* **Bars & Launchers:** `dwmblocks` · `Polybar` · `Tint2` · `Rofi`
* **Terminals & Editors:** `Alacritty` · `Neovim` · `Vim`
* **Utilities:** `Picom` (Compositor) · `Dunst` (Notifications)

---

## ✨ Key Features

* **Clickable dwmblocks Applets:** Interactive status bar items responding to mouse click events.
* **Dynamic Theme Switcher:** Change system-wide color palettes on the fly inside `dwm`.
* **Lightweight Footprint:** Optimized for speed, low memory usage, and zero bloat.
* **Modular Structure:** Cleanly separated configs for effortless cherry-picking.

---

## ⌨️ Keybindings Quick Reference

| Key Combination | Action |
| :--- | :--- |
| **Super + Enter** | Launch Terminal (`Alacritty`) |
| **Super + R** | Launch Application Menu (`Rofi`) |
| **Super + E** | Open File Manager |
| **Super + C** | Close Active Window |
| **Super + Shift + Q** | Exit / Quit Session |

---

## 🛠️ Installation & Setup

### 1. Clone the Repository

git clone https://github.com/cyaniket999/dotconfig.git
cd dotconfig

### 2. Deploy Configurations

Backup your current setup before linking or copying:

# Copying Neovim & Rofi configs to ~/.config
cp -r nvim rofi ~/.config/

# Copying custom scripts
mkdir -p ~/.local/bin
cp -r scripts/* ~/.local/bin/
chmod +x ~/.local/bin/*

> **Note:** For `dwm` and `dwmblocks`, navigate to their respective subdirectories and recompile:
> 
> cd dwm && sudo make clean install
> cd ../dwmblocks && sudo make clean install

---

## 📸 Screenshots

<img src="assets/2.png" width="90%" alt="desktop">
<img src="assets/3.png" width="90%" alt="desktop">
<img src="assets/4.png" width="90%" alt="desktop">
<div align="center">

Crafted for **Linux**

</div>
