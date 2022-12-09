#!/usr/bin/env bash
cd /tmp

### Instally 17g and other stuff
apt install wget
wget https://github.com/aleyna-tilki/base-files/releases/download/current/base-files_9999-noupdate_amd64.deb
wget https://github.com/The-Aleyna-Tilki-Linux/17g-installer/releases/download/current/17g-installer_1.0_all.deb
wget https://github.com/aleyna-tilki/aleyna-theme/releases/download/ffff/aleyna-theme.deb
apt install ./*.deb -yq --allow-downgrades

#### Disable recommends by default
cat > /etc/apt/apt.conf.d/01norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF
