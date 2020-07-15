#!/bin/bash
# File: /opt/yadbash/powerball/sparkypowerball.sh
# Author: Bobby Cooper - http://YadBash.com/ based on work by Yad Author, Victor Ananjevsky
# (c) 2018-2019 Licensed Under GPL 2.1

export mainDir="/opt/yadbash/powerball" 
export iconsDir="/opt/yadbash/powerball/icons"
export listDir="/opt/yadbash/powerball/list"
export imagesDir="/opt/yadbash/powerball/images"
export sourceDir="/opt/yadbash/powerball/source"
export tempDir="/opt/yadbash/powerball/temp"
export iconHoldDir=/opt/yadbash/powerball/temp/ahold-icon

title="Sparky Powerball - powered by YadBash"

winIcon="imagesDir/sparkypb.png"

cd $iconsDir/display/
	rm *.desktop >> null

rm $iconHoldDir/*.desktop

fkey=$(($RANDOM * $$))
cd $mainDir 

if [ ! -d "$tempDir" ]; then
  mkdir /opt/yadbash/powerball/temp
fi

cd $mainDir/icons/reset
	cp reset.desktop $iconsDir/display

enter_keyNumber() {
. /$sourceDir/enter-keynumber.souce
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

cd $iconsDir/reset
	cp reset.desktop $iconsDir/display
}
export -f pb_reset 

yad \
	--plug="$fkey" \
	--tabnum=1  \
	--form \
	--field="!$imagesDir/go.png!Play:BTN" "bash -c gen_pbNumbers" &

yad \
	--plug="$fkey" \
	--tabnum=2 \
	--icons --read-dir="$iconsDir/display" --monitor --single-click --item-width=80 --sort-by-name  &

yad \
	--paned \
	--key="$fkey" \
	--width=800 \
	--height=275 \
	--title="$title" \
	--window-icon="$winIcon"  \
	--center  \
	--button="About YadBash":"bash -c about_yadbash" \
	--button="Key Number":"bash -c enter_keyNumber" \
	--button="Numbers":"bash -c current_numbers"  \
	--button="Reset":"bash -c pb_reset" \
	--button="Exit":1

	ret=$?
	[[ $ret -eq 1 ]] && exit

	exit
