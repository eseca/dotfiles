#!/bin/bash

SCREENSHOT=$HOME/screenshot_$(date +%Y-%m-%dT%H:%M:%S).png
import -window root $SCREENSHOT
