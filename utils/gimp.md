# GIMP

- [GIMP](https://www.gimp.org/)

## Flatpak Installation

```bash
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

## GIMP Installation

```bash
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak run org.gimp.GIMP//stable
flatpak update
```
