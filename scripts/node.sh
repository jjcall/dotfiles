#!/bin/bash
# Install Node and NPM Modules

source 'tools/colors.sh'
source 'tools/functions.sh'

if get_boolean_response "Do you want to install some global npm packages?"; then
  # Add packaged here.
else
  echo_item "Skipping npm global packages" red
fi
