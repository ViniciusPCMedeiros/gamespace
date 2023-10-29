# gamespace


```
sudo apt install -y xvfb x11-apps x11vnc xterm dbus-x11 granatier
sudo Xvfb :99 -screen 0 640x480x24 &
export DISPLAY=:99
x11vnc -display :99 -forever &
git clone https://github.com/novnc/noVNC.git
cd noVNC
./utils/novnc_proxy --vnc localhost:5900 &
/usr/games/granatier
```