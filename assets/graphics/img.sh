#!/bin/bash

processImg () {
    imgPNG=$1
    filename=${imgPNG%.*}
    imgJPG=$filename.jpg
    convert $imgPNG $imgJPG
    rm $imgPNG
    w=$(identify -format '%w' $imgJPG)
    if ((700 < $w)); then
        ffmpeg -i $imgJPG -y -vf scale=700:-1 $filename-temp.jpg
        # rm $imgJPG
        mv $filename-temp.jpg $imgJPG
    else
        echo "No changes" $imgJPG
    fi
}

for img in $PWD/images/*.png; do processImg $img; done