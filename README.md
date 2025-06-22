# SparkyPB - Powerball (tm)** Number Generator Version - 2025

<img src="https://github.com/offternet/powerball-generator/blob/master/sparkypb-icon.png"> <img src="https://github.com/offternet/powerball-generator/blob/master/sparky-pb-300banner.png">

**Updated New Code:** June 22, 2025

**IMPORTANT !!!!!** The 2025 version now uses new program directory: /home/yadbash/sparkypb. 
                    Also required is a duplicate copy of yad named yad2 is required. (see instrutions below)

1. Download zip file (program code and images)
2. Create directory: /home/yadbash
3. Set /home/yadbash to user permissions:
4. Open Terminal | <code>cd /home</code> | <code>sudo chown user:user ./sparkypb</code>
5. Extract files to /home/yadbash/sparkypb (extracted directory must be renamed to /home/yadbash/sparkypb ---- if needed)
6. <code>cde /home/yadbash/sparkypb</code> | sudo chmod +x ./sparkypb.sh (Makes file executable)
7. Execute SparkyPB:
     From /home/yadbash/sparkypb directory: <code>./sparkypb.sh</code>
     From any directory: /home/yadbash/sparkypb/sparkypb.sh
   
**Dependencies:**   Requires YAD GUI 1.0+ (recommended)
                    Requires Gtk-3.x environment on a GNU Linux system. 
                    Sparkypb uses yad --paned option which is not in version: 0.40.0
                    You will have to compile yad if version 1.0+ is installed 
                    See instructions here: https://yadbash.com/pages/view/57/source-install

    
**Important !!!  Special Duplicate 2nd copy of yad requied:** 

1. For version 10-14.x: Open terminal: <code>sudo cp /usr/local/bin/yad /usr/local/bin/yad2
2. For Version 0.40.x: <code>sudo cp /usr/bin/yad /usr/bin/yad2


Tested on Debian 11, Debian 11, and Debian 12 Bookworm. Should work on all Destkops as long as yad 10.x - 14.x will work.

----------------------
Screenshots:

** Powberball is a trademark of the Powerball Corporation and NOT owned by Robert Cooper. 
** SparkyPB is only for entertainment purposes and will NOT increase your changes of winning a Jackpot but if you do, 1% to Robert would be a kind jesture of your apprecation.
