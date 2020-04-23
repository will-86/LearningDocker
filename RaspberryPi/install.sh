#!/bin/sh
# This is what I believe the script is ultimately doing on a fresh Raspbian install on a Raspberry Pi 4b
url="https://download.docker.com"
dist="raspbian"
sh_c='sudo -E sh -c'

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg -y
$sh_c "curl -fsSL \"$url/linux/$dist/gpg\" | apt-key add -qq"
$sh_c "echo \"deb [arch=armhf] $url/linux/$dist buster stable\" > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli --no-install-recommends -y
sudo usermod -aG docker pi
