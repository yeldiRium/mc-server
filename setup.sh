#!/bin/bash

# Download the minecraft server package.
curl -L https://edge.forgecdn.net/files/2615/411/FTB%20Presents%20Direwolf20%201.12-1.12.2-2.3.0-Server.zip -o ./Server.zip

# Unpack the server package and remove it afterwards.
unzip -q Server.zip -d temp-server
rm Server.zip

# Set execute permisson on start script.
chmod a+x ./temp-server/ServerStart.sh

# Create eula.txt.
touch temp-server/eula.txt

# Install Forge Essentials (https://minecraft.curseforge.com/projects/forge-essentials-74735).
curl -L https://media.forgecdn.net/files/2650/911/forgeessentials-1.12.2-12.3.27-server.jar -o ./temp-server/mods/forgeessentials-1.12.2-12.3.27-server.jar

# Run FTB installer.
chmod a+x ./temp-server/FTBInstall.sh
./temp-server/FTBInstall.sh
