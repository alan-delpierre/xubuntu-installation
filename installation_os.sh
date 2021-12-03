echo "[*] Script d'installation de l'OS 12/2021"
echo "[*] Install Docker"
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io 

echo "[*] Install necesseray packages"
sudo apt-get install -y firefox keepass2 gparted git librsvg2-bin gnome-disk-utility meson chromium-browser \
sassc inkscape optipng libglib2.0-dev-bin git gtk2-engines-murrine gtk2-engines-pixbuf \
gnupg2 curl vagrant python3-pip flameshot virtualbox-dkms virtualbox-guest-dkms zsh neofetch openvpn

echo "[*] Install snap packages"
sudo apt install snapd && sudo snap install code --classic

echo "[*] Create directories"
cd ~/Documents && mkdir Tools && mkdir Athena && mkdir Tools && mkdir keys && VM

echo "[*] Install Go Language"
sudo apt install golang-go

echo "[*] Install pentest tools"
cd ~/Documents/Tools 

git clone https://github.com/ticarpi/jwt_tool && cd jwt_tool
python3 -m pip install termcolor cprint pycryptodomex requests
chmod +x jwt_tool.py

git clone https://github.com/ffuf/ffuf && cd ffuf && go get && go build

mkdir dict && cd dict && git clone https://github.com/fuzzdb-project/fuzzdb.git
cd ~/Documents/Tools && && git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/irsdl/IIS-ShortName-Scanner.git
git clone https://github.com/the-tcpdump-group/tcpdump.git


echo "[*] Kali Linux terminal"
sudo apt-get install zsh && chsh

echo "neofetch" > ~/.zshrc

#Command not found
sudo echo '# (c) Zygmunt Krynicki 2007,
# Licensed under GPL, see COPYING for the whole text
#
# This script will look-up command in the database and suggest
# installation of packages available from the repository

if [[ -x /usr/lib/command-not-found ]] ; then
        if (( ! ${+functions[command_not_found_handler]} )) ; then
                function command_not_found_handler {
                        [[ -x /usr/lib/command-not-found ]] || return 1
                        /usr/lib/command-not-found -- ${1+"$1"} && :
                }
        fi
fi
' > /etc/zsh_command_not_found


echo "[*] Install Kali Linux Themes"
cd && git clone https://gitlab.com/kalilinux/packages/kali-themes.git
cd kali-themes
sudo cp -a share /usr/
sudo cp -a etc /
sudo apt-get install xfce4
     qt5
     fonts-cantarell
     fonts-firacode
     lightdm
     qt5ct
     ristretto
     parole
     engrampa
     thunar-archive-plugin
     mousepad
     mate-calc
     atril
     xfce4-taskmanager
     xfce4-screenshooter
     xcape
     xfce4-power-manager-plugins
     xfce4-whiskermenu-plugin
     xdg-user-dirs-gtk

echo "[*] Le changement de thème peut être fait manuellement via le paramètre 'Apparence'"
