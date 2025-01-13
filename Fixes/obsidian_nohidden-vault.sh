#!/bin/bash

#A small utility to fix a disappearing Obsidian vault stored in iCloud.
#Written by Matt Waldeck, Updated 2025/01/13.

#Get username
read -p "What is your username? " username
clear

#Move to Obsidian data directory.
cd /Users/$username/Library/Mobile\ Documents/iCloud~md~obsidian/Documents

#List available vaults.
ls
read -p "Which vault needs to be visible? " vault

#Update folder and all contents to be visible.
chflags -R nohidden ./$vault
