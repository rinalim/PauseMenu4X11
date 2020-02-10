# Reference    :
# https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/supplementary/runcommand/joy2key.py
# https://github.com/sana2dang/PauseMode

sudo apt-get install pqiv -y

rm -rf /opt/retropie/configs/all/PauseMenu4X11/
mkdir /opt/retropie/configs/all/PauseMenu4X11/
cp -f -r ./PauseMenu4X11 /opt/retropie/configs/all/

sudo sed -i '/PauseMenu4X11.py/d' /opt/retropie/configs/all/runcommand-onstart.sh
echo '/usr/bin/python /opt/retropie/configs/all/PauseMenu4X11/PauseMenu4All.py /dev/input/js0 &' >> /opt/retropie/configs/all/runcommand-onstart.sh

chgrp -R -v pi /opt/retropie/configs/all/PauseMenu4X11/
chown -R -v pi /opt/retropie/configs/all/PauseMenu4X11/

python ./PauseMenu4X11/setup.py /dev/input/js0
