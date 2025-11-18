#!/bin/bash

playerctl --follow -p spotify status | while read -r status; do
    case $status in
        Playing) echo "" ;;
        Paused)  echo "" ;;
        *)       echo "" ;;
    esac
done