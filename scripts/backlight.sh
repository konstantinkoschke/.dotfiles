#!/bin/bash

brightnessctl "$@"
pkill -RTMIN+2 i3blocks
