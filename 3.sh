#!/bin/bash
sudo apt install fcitx-mozc

sudo tee /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf <<EOF
Environment="GTK_IM_MODULE=fcitx"
Environment="QT_IM_MODULE=fcitx"
Environment="XMODIFIERS=@im=fcitx"
EOF
