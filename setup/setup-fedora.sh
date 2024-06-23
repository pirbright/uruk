set -euxo pipefail

sudo dnf update

sudo dnf install -y curl git unzip flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Stop the machine from sleeping or locking
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0


