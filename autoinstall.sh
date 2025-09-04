set -e

sudo pacman -S sway swaybg swayidle swaylock waybar pipewire pipewire-pulse wireplumber neovim pavucontrol thunar thunar-archive-plugin 7zip unzip zip xarchiver gcc gthumb btop ffmpegthumbnailer tumbler mpv qbittorrent grim slurp xdg-desktop-portal-wlr zathura zathura-cb zathura-pdf-poppler fzf groff mesa bc yt-dlp zsh-autosuggestions acpi wl-clipboard ttf-nerd-fonts-symbols networkmanager network-manager-applet iwd gammastep gvfs gvfs-mtp dunst polkit-gnome zsh-syntax-highlighting zsh nwg-look lf bleachbit telegram-desktop foot unrar steam wireshark-qt steam noto-fonts-emoji noto-fonts-cjk ttf-liberation inter-font xorg-xwayland ffmpeg rofi-wayland libreoffice-fresh steam cmus

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S brillo librewolf-bin heroic-games-launcher-bin

cd
mkdir -p ~/Pictures
mkdir -p ~/Documents
mkdir -p ~/movi
mkdir -p ~/Music
git clone https://github.com/Peppereli/dotfilesartix
cd ~/dotfilesartix
rm -rf .git
cp -r "." ~/
chmod +x ~/.config/sway/exit.sh
chmod +x ~/.config/waybar/powermenu
chmod +x ~/.config/fetch
cd
rm -rf dotfilesartix

echo "CHANGING THE SHELL TO ZSH..."
sudo chsh -s $(which zsh) $USER

echo "SETTING DEFAULT APPLICATIONS..."
xdg-mime default xarchiver.desktop application/zip
xdg-mime default xarchiver.desktop application/x-tar
xdg-mime default xarchiver.desktop application/x-gzip
xdg-mime default xarchiver.desktop application/x-bzip2
xdg-mime default xarchiver.desktop application/x-xz
xdg-mime default xarchiver.desktop application/x-rar
xdg-mime default xarchiver.desktop application/x-7z-compressed
xdg-mime default gthumb.desktop image/jpeg
xdg-mime default gthumb.desktop image/png
xdg-mime default gthumb.desktop image/gif
xdg-mime default gthumb.desktop image/bmp
xdg-mime default gthumb.desktop image/tiff
xdg-mime default gthumb.desktop image/webp
xdg-mime default org.pwmt.zathura.desktop application/pdf
xdg-mime default org.pwmt.zathura.desktop application/x-cbz
xdg-mime default org.pwmt.zathura.desktop application/x-cbr
xdg-mime default thunar.desktop inode/directory
gio mime inode/directory thunar.desktop
xdg-mime default librewolf.desktop x-scheme-handler/http
xdg-mime default librewolf.desktop x-scheme-handler/https
xdg-mime default librewolf.desktop text/html
xdg-mime default librewolf.desktop application/xhtml+xml
xdg-mime default mpv.desktop video/mpeg
xdg-mime default mpv.desktop video/mp4
xdg-mime default mpv.desktop video/x-matroska
xdg-mime default mpv.desktop video/x-flv
xdg-mime default mpv.desktop video/x-msvideo
xdg-mime default mpv.desktop video/quicktime
xdg-mime default mpv.desktop video/x-wmv
xdg-mime default mpv.desktop video/webm
xdg-mime default mpv.desktop video/3gpp
xdg-mime default mpv.desktop video/ogg
xdg-mime default mpv.desktop audio/mpeg
xdg-mime default mpv.desktop audio/x-wav
xdg-mime default mpv.desktop audio/ogg
xdg-mime default mpv.desktop audio/flac
xdg-mime default mpv.desktop audio/aac
xdg-mime default mpv.desktop audio/mp4
xdg-mime default mpv.desktop audio/x-ms-wma
xdg-mime default mpv.desktop audio/x-aiff
xdg-mime default mpv.desktop audio/opus
xdg-mime default mpv.desktop application/x-ogg
xdg-mime default nvim.desktop text/plain
xdg-mime default nvim.desktop text/markdown
xdg-mime default nvim.desktop application/json
xdg-mime default nvim.desktop application/xml
xdg-mime default nvim.desktop text/x-csrc
xdg-mime default nvim.desktop text/x-c++src
xdg-mime default nvim.desktop text/x-java
xdg-mime default nvim.desktop text/x-python
xdg-mime default nvim.desktop text/x-shellscript
xdg-mime default nvim.desktop application/x-sh
xdg-mime default nvim.desktop text/csv
xdg-mime default nvim.desktop application/yaml
xdg-mime default nvim.desktop text/yaml
xdg-mime default nvim.desktop text/x-log

fc-cache -f -v
