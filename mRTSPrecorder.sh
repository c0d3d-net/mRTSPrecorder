#!/bin/bash
# mRSTP Stream Recorder v1.0
# c0d3d.space
clear
echo ""
echo "           _____ _______ _____ _____  "
echo "          |  __ \__   __/ ____|  __ \ "
echo " _ __ ___ | |__) | | | | (___ | |__) |"
echo "| '_ ' _ \|  _  /  | |  \___ \|  ___/ "
echo "| | | | | | | \ \  | |  ____) | |     "
echo "|_| |_| |_|_|  \_\ |_| |_____/|_|     "
echo "S T R E A M - R E C O R D E R - v1.0  "
echo "by c0d3d.space"
echo ""
read -p "Enter RTSP URL (without 'rtsp://', e.g. '192.168.1.15:554/live/ch0'): " STREAM
echo ""
read -p "Enter username: " USER
read -s -p "Enter password: " PASS
echo ""
read -p "Save Path (e.g. '/Users/account/Movies'): " SPATH
echo ""

STREAML="rtsp://$USER:$PASS@$STREAM"
FDATE=$(date +'%Y-%m-%d_%H-%M')\n
SFILE=mRTSP_$FDATE

echo ""
read -p "Configuring done. To start capturing press Enter, to stop capturing press CTRL+C."
echo ""

ffmpeg -i "$STREAML" -acodec copy -vcodec copy $SPATH/$SFILE.mp4;
exit;
