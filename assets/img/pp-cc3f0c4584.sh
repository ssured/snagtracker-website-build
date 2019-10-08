#/usr/local/bin/pngpaste temp@2x.png
#/usr/local/bin/pngquant temp@2x.png -f --ext ".png"
#/usr/local/bin/convert temp@2x.png -resize 50% temp.png
#/usr/local/bin/pngquant temp.png -f --ext ".png"

/usr/local/bin/pngpaste temp.png
/usr/local/bin/pngquant temp.png -f --ext ".png"

FILENAME=`date "+%Y%m%d%H%M-"``md5 -q temp.png`
#mv temp@2x.png $FILENAME@2x.png
mv temp.png $FILENAME.png

echo "![](/assets/img/$FILENAME.png)"
echo "![](/assets/img/$FILENAME.png)" | pbcopy

# pngpaste - | convert png:- -resize 50% png:- | ./impbcopy -