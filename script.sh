echo -e "Starter pack installation"

echo -e "Updating the system"
sudo apt update -y
sudo apt install wget -y

echo -e "Installation of Virtualbox"
sudo apt install virtualbox virtualbox-ext-pack -y

echo -e "Installation of Git & Snap"
sudo apt-get install git -y && sudo apt install snapd -y

echo -e "Installation of Pycharm IDE"
sudo snap install pycharm-community --classic -y

echo -e "Installation of Spotify"
sudo snap install spotify

echo -e "Downloading and installing Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -y
sudo dpkg -i google-chrome-stable_current_amd64.deb -y
sudo apt-get install -f

echo -e "Removing Snap"
sudo sudo rm -rf /var/cache/snapd/ && sudo apt autoremove --purge snapd gnome-software-plugin-snap && sudo rm -fr ~/snap -y

echo -e "KeePass installation"
sudo apt-add-repository ppa:jtaylor/keepass -y && sudo apt-get update -y && sudo apt-get install keepass2 -y
sudo apt-get update -y && sudo apt-get install xdotool -y

read -p "Do you want to create new SSH Public Key? [Y/N]: " SSH_PK
if [ $SSH_PK = Y ]; then
  echo -e "Generating SSH Public Key for git"
  ssh-keygen
fi

echo -e "Next step is to generate Public Access Token on Github. Go to Settings >> Developer settings >> Personal acces tokens >> Generate new token"
