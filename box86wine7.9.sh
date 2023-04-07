#this script is made by smichael id 
#youtube : https://youtube.com/@smichael_id226
#email : smichael230706@gmail.com

sudo apt update
sudo apt upgrade

sudo apt-get install python -y
sudo apt-get install python-pip -y
sudo pip install lolcat 

echo  "VERSION : 1.0 " |lolcat
echo  "AUTHOR : SMICHAEL ID " |lolcat
echo  "YOUTUBE : https://youtube.com/@smichael_id226 " |lolcat 

sleep 5

sudo apt install git build-essential cmake gcc-arm-linux-gnueabihf -y
sudo apt install git build-essential cmake wget gcc-arm-linux-gnueabihf zenity:armhf libasound*:armhf libstdc++6:armhf mesa*:armhf -y

cd 

git clone https://github.com/ptitSeb/box86 && cd box86

mkdir build; cd build; cmake .. -DRPI4ARM64=1 -DARM_DYNAREC=ON -DCMAKE_BUILD_TYPE=RelWithDebInf

make -j$(nproc)

sudo make install

cd

rm -rf box86

mkdir wine

cd wine

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OG9W1CY_gvgrQx_50RSbYA-pTm8dGOSd' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1OG9W1CY_gvgrQx_50RSbYA-pTm8dGOSd" -O WINE-7.9.tar.gz && rm -rf /tmp/cookies.txt

tar -xvf *.tar.gz

echo "Do you want to install software render? (yes/no)"
read answer

if [ "$answer" == "yes" ]; then
  echo "Continuing..."
sudo apt remove tightvncserver -y
sudo apt autoremove -y
sudo apt install tigervnc-standalone-server -y
vncserver -geometry 1080x720  -y

else
  echo "Exiting."
  echo "script by smichael id"
  echo "youtube channel : https://youtube.com/@smichael_id226"
fi


