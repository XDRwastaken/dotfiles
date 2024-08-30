![Dots](https://gitlab.com/XDRwastaken/img/-/raw/main/dotfiles/dots.png)

<div align="center">

### Package Overview

| **Package**       | **Description**           | **Install With**                                              |
|-------------------|---------------------------|---------------------------------------------------------------|
| [waybar](https://github.com/Alexays/Waybar)        | Wayland status bar        | -                                                             |
| [tofi](https://github.com/itshog/tofi)          | Application launcher      | `wl-clipboard`, `cliphist`, `wtype`                           |
| [kitty](https://github.com/kovidgoyal/kitty)         | Terminal emulator         | `fish`                          |
| [sway](https://github.com/swaywm/sway)          | Wayland compositor        | `swaybg`, `swayidle`, `swaylock`, `xdg-desktop-portal-wlr`, `pavucontrol` |
| [grim](https://sr.ht/~emersion/grim)          | Screenshot tool           | `wl-clipboard`, `slurp`, `xdg-utils`, `xdg-user-dirs`         |
| [polkit(-gnome)](https://gitlab.gnome.org/Archive/policykit-gnome)  | Authentication agent      | -                                                             |
| [autotiling-rs](https://github.com/ammgws/autotiling-rs) | Automatic tiling          | -                                                             |
| [mako](https://github.com/emersion/mako)          | Notification daemon       | -                                                             |

```sh
<AUR Helper> -S sway waybar tofi kitty cliphist swaybg swayidle xdg-user-dirs swaylock grim wl-clipboard slurp mako wtype xdg-utils autotiling-rs fish pavucontrol xdg-desktop-portal-wlr polkit-gnome --noconfirm
```

Don't have a login manager?
that's fine, it'll start Sway for you automatically once you entered your tty login and password.
