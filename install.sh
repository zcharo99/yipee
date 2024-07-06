#!/bin/bash
checkpkg() {
  pacman -Q "$1" &>/dev/null
}
if ! checkpkg git; then
 echo ":: git is not installed, installing..."
 sudo pacman -Sy --noconfirm git &>/dev/null
 if [ $? -ne 0 ]; then
   echo "!! Failed to install git"
   exit 1
 fi
fi

if ! checkpkg git; then
 echo ":: curl is not installed, installing..."
 sudo pacman -Sy --noconfirm git &>/dev/null
 if [ $? -ne 0 ]; then
   echo "!! Failed to install curl"
   exit 1
 fi
fi

sudo rm -f /usr/bin/yipee &>/dev/null
mkdir -p $HOME/.local/share/yipee
curl -s https://raw.githubusercontent.com/zcharo99/yipee/main/aur > yipee
echo ""
sudo mv yipee /usr/bin/
sudo chmod +x /usr/bin/yipee

echo ":: Installation complete!"
