#!/bin/bash

# Generate a timestamped filename to avoid overwriting the dump file
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
DUMP_FILE="date-menu-formatter-$TIMESTAMP.conf"

# Dump the current dconf settings for date-menu-formatter
dconf dump /org/gnome/shell/extensions/date-menu-formatter/ > "$DUMP_FILE"

# Load the predefined configuration from the repository
dconf load /org/gnome/shell/extensions/date-menu-formatter/ < date-menu-formatter.conf

