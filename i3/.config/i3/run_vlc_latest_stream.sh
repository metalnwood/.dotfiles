#!/bin/bash
flatpak run org.videolan.VLC ~/Downloads/$(ls -lt ~/Downloads/F5* | cut --delimiter "/" --fields 5 | head -1)
