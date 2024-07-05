#!/bin/bash
mkdir -p $HOME/.local/share/yipee
curl https://raw.githubusercontent.com/zcharo99/yipee/main/aur > yipee
echo ""
sudo mv yipee /usr/bin/
sudo chmod +x /usr/bin/yipee
sudo chown $(whoami):$(whoami) /usr/bin/yipee
echo ":: Installation complete!"
