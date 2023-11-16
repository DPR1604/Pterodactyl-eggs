#!/bin/sh

if ! [ -f "./version.json" ]; then
	curl -JLO "https://api.modpacks.ch/public/modpack/$MODPACK_ID/$MODPACK_VERSION/server/linux" && chmod +x serverinstall_"$MODPACK_ID"_"$MODPACK_VERSION"
	"$PWD"/serverinstall_"$MODPACK_ID"_"$MODPACK_VERSION"
fi

sh /home/container/start.sh

