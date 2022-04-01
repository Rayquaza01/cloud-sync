#!/bin/bash

CONFIG_DIR=${XDG_CONFIG_HOME:-~/.config}/r01-cloud-sync
INSTALL_PATH=~/.local/bin

if [ ! -d $INSTALL_PATH ]; then
	mkdir -p $INSTALL_PATH
fi

cp ./cloud-sync $INSTALL_PATH
chmod u+x $INSTALL_PATH/cloud-sync
echo "Copied ./cloud-sync to $INSTALL_PATH"

if [ ! -d $CONFIG_DIR ]; then
	mkdir -p $CONFIG_DIR
fi

cp ./config.csv $CONFIG_DIR
echo "Copied ./config.csv to $CONFIG_DIR"

echo "Installation done!"
