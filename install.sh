#!/bin/bash


if [ "$(id -u)" -eq 0 ]; then
	echo "Script is running as root"
else
	echo "Script is not running as root"
fi
