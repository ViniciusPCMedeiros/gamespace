# gamespace

Xvfb

```
sudo apt install -y xvfb x11-apps x11vnc xterm novnc granatier
Xvfb :99 -screen 0 1024x768x24 &
export DISPLAY=:99
x11vnc -display :99 -forever &
novnc_proxy --vnc localhost:5900 &
/usr/games/granatier
```

x11-apps

```
sudo apt install -y x11-apps
```

x11vnc

```
sudo apt install -y x11vnc
```