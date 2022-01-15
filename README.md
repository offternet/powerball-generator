# sparkyos-powerball
Updated: Uploaded Missing Number Files (My Apologies)

Dependencies: Requires YAD GUI 0.40+

Powrball Generator using Yad Gui &amp; Bash.  Any Gtk-2.0+ Linux System with Yad Gui 0.40+

Files are copied to /opt/yadbash/powerball/  & chown owner:group - NOT root user.

    Download sparkyos-powerball
        unzip sparky-powerball-master.zip to directory
        cd (to that directory where sparky-powerball-master files have been unzipped to)
        sudo mkdir /opt/yadbash
        sudo chown -R username:user-group /opt/yadbash (for example: sudo chown -R bobby:bobby /opt/yadbash )
        mkdir /opt/yadbash/powerball
        cp -R * /opt/yadbash/powerball
        cd /opt/yadbash/powerball
        chmod u+x sparkypowerball.sh
    
    (Execute Sparky Powerball)
        ./sparkypowerball.sh
    
        or
        
        /opt/yadbash/powerball/sparkypowerball.sh
    

Must be using Linux GNU with Yad Gui 0.40+ with Gtk-2.0+ desktop environment.

A 2nd copy of yad name yad2 must be duplicated in /usr/bin 

    cd /usr/bin
    sudo cp yad /usr/bin/yad2


Tested on Debian 10 Buster Desktop Openbox File Manager. 

----------------------
Screenshots:

https://github.com/godistro/powerball-generator/raw/master/screenshots/sparky-powerball01.png

