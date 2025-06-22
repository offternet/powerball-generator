#!/bin/bash
# File: /home/yadbash/sparkypb/sparkypb.sh
# Author: Bobby Cooper - http://YadBash.com/ based on work by Yad Author, Victor Ananjevsky
# SparkyPB-Powerball-Numbers-Generator on Github: https://github.com/offternet/SparkyPB-Powerball-Numbers-Generator

# (c) 2018-2025 Licensed Under GPL 3

export mainDir="/home/yadbash/sparkypb" 
export iconsDir="/home/yadbash/sparkypb/icons"
export listDir="/home/yadbash/sparkypb/list"
export imagesDir="/home/yadbash/sparkypb/images"
export sourceDir="/home/yadbash/sparkypb/source"
export tempDir="/home/yadbash/sparkypb/temp"
export iconHoldDir="/home/yadbash/sparkypb/temp/ahold-icon"

title="SparkyPB by Robert Cooper. YadBash.com | Offternet.com"

winIcon="imagesDir/sparkypb.png"

cd $iconsDir/display/
	rm *.desktop >> null

rm $iconHoldDir/*.desktop

fkey=$(($RANDOM * $$))
cd $mainDir 

if [ ! -d "$tempDir" ]; then
  mkdir /home/yadbash/sparkypb/temp
fi

sleep 2

cd $mainDir/icons/reset
	cp *.desktop $iconsDir/display


enter_keyNumber() {
. /$sourceDir/enter-keynumber.source
}
export -f enter_keyNumber

about_yadbash() { 
. /$sourceDir/info_yadbash.source
}
export -f about_yadbash

current_numbers() {
. /$sourceDir/display-window-export-save-prnt.source
}
export -f current_numbers

gen_pbNumbers() {
cd $iconsDir/display/
	rm *.desktop >> null
. /$sourceDir/generate-pb-5numbers-1pb.source
}
export -f gen_pbNumbers

pb_reset() {
	rm $iconsDir/display/*.desktop >> null
	rm $iconHoldDir/*.desktop >> null

sleep 2

cd $iconsDir/reset
	cp *.desktop $iconsDir/display
}
export -f pb_reset 


yad --plug="$fkey" --form --tabnum=1 --columns=1 \
 	--image="/home/yadbash/sparkypb/images/sparkypb-800-banner-icon.png"  \
	--column="Name" \
	--expand-column=1 &


yad \
	--plug="$fkey" \
	--tabnum=2 \
	--icons --read-dir="$iconsDir/display" --monitor --single-click --item-width=80 --sort-by-name  &

yad \
	--paned \
	--key="$fkey" \
    --splitter=110\
	--width=900 \
	--height=325 \
	--title="$title" \
	--window-icon="$winIcon"  \
	--center  \
    --button="Get Numbers":"bash -c gen_pbNumbers" \
	--button="About YadBash":"bash -c about_yadbash" \
	--button="Key Number":"bash -c enter_keyNumber" \
	--button="Numbers":"bash -c current_numbers"  \
	--button="Reset":"bash -c pb_reset" \
	--button="Exit":1

	ret=$?
	[[ $ret -eq 1 ]] && exit

	exit
