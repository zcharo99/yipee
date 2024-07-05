#!/bin/bash
checkpkg() {
  pacman -Q "$1" &>/dev/null
}

sudo rm -f /usr/bin/yipee &>/dev/null
mkdir -p $HOME/.local/share/yipee
curl https://raw.githubusercontent.com/zcharo99/yipee/main/aur > yipee
echo ""
sudo mv yipee /usr/bin/
sudo chmod +x /usr/bin/yipee
sudo chown $(whoami):$(whoami) /usr/bin/yipee

if ! checkpkg git; then
 echo ":: Git is not installed, installing..."
 sudo pacman -Sy --noconfirm git
 if [ $? -ne 0 ]; then
   echo "!! Failed to install git"
   exit 1
 fi
fi

echo ":: Installation complete!"
