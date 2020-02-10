# Reference    :
# https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/supplementary/runcommand/joy2key.py
# https://github.com/sana2dang/PauseMode

sudo apt-get install libjpeg8 -y
sudo apt-get install imagemagick -y
sudo apt-get install fonts-nanum -y
sudo apt-get install fonts-nanum-extra -y
sudo apt-get install python-pil -y

rm -rf /opt/retropie/configs/all/PauseMenu4X11/
mkdir /opt/retropie/configs/all/PauseMenu4X11/
cp -f -r ./PauseMenu4X11 /opt/retropie/configs/all/

sudo sed -i '/PauseMenu4X11.py/d' /opt/retropie/configs/all/runcommand-onstart.sh
echo '/usr/bin/python /opt/retropie/configs/all/PauseMenu4X11/PauseMenu4X11.py /dev/input/js0 -control &' >> /opt/retropie/configs/all/runcommand-onstart.sh

chgrp -R -v pi /opt/retropie/configs/all/PauseMenu4X11/
chown -R -v pi /opt/retropie/configs/all/PauseMenu4X11/

python ./PauseMenu4X11/setup.py /dev/input/js0 -control
