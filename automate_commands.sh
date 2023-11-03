#!/bin/bash
# Update the system
sudo apt update
# Install required packages
sudo apt install -y xvfb x11-apps x11vnc xterm dbus-x11 granatier

# Start Xvfb
Xvfb :99 -screen 0 640x480x24 &

# Set the DISPLAY environment variable
export DISPLAY=:99

# Start x11vnc
x11vnc -display :99 -forever &

# Clone noVNC repository
git clone https://github.com/novnc/noVNC.git

# Change directory to noVNC
cd noVNC

# Start noVNC proxy
./utils/novnc_proxy --vnc localhost:5900 &

# Start granatier
/usr/games/granatier
