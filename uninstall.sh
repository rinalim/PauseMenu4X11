rm -rf /opt/retropie/configs/all/PauseMenu4X11/

sudo sed -i '/PauseMenu4X11.py/d' /opt/retropie/configs/all/runcommand-onstart.sh

python ./PauseMenu4X11/remove.py
