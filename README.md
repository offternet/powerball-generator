# sparkyos-powerball
Powrball Generator using Yad Gui &amp; Bash.  Any Gtk-2.0+ Linux System with Yad Gui 0.40+

Files are copied to /opt/yadbash/powerball/  & Owner is: the-user-name - NOT root user.

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
    

Must be using Linux GNU with Yad Gui 0.40+ with Gtk-2.0+ desktop environment
nvironment.

A 2nd copy of yad name yad2 must be duplicated in /usr/bin 

    cd /usr/bin
    sudo cp yad /usr/bin/yad2


Built on SparkyLinux 4 (Debian Stretch) Openbox File Manager. Tested on SparkyLinux 5 (Debian Buster) too.

Todo: Build yad installer to fully automate install - run on user computer.


