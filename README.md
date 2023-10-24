# sparkyos-powerball

https://github.com/offternet/powerball-generator/blob/master/sparkypb-icon.png

https://www.youtube.com/watch?v=IVgLfWJEB9M

**IMPORTANT !!!!!    Do NOT USE Individual uploaded files at this time as 2018 files are located in /opt/yadbash/powerball and for 2023 the new location is /home/yadbash/powerball.**

**Updated:** Oct 23, 2023 new sparky-pb-correct-home-path-gif-spin-working.zip file has new location /home/yadbash/powerball

**Dependencies:** Requires YAD GUI 1.0+ and requires Gtk-3.0+ environment on a GNU Linux system. 

     Sparky Powerball will Includes Debian and Ubuntu and their variants.

**Important:** A 2nd copy of yad named /usr/local/bin/yad2 must be duplicated.

    <code>cd /usr/local/bin</code>
    <code>sudo cp ./yad ./yad2

Sparky Powerball uses a 2nd copy of yad to start and stop functions, open & close dialog windows.

**Stand Alone yad executable is available:**

x64 Debian 12 standlone yad is here in my repository: https://github.com/offternet/yad-compiled-files/blob/main/yad13-html.zip

Powrball Generator using Yad Gui and Bash.  Any Gtk-3.0+ Linux System with Yad Gui 1.0+

1. Download new zip file 2023: sparky-pb-correct-home-path-gif-spin-working.zip

   https://github.com/offternet/powerball-generator/blob/master/sparky-pb-correct-home-path-gif-spin-working.zip

2. Use <code>sudo mkdir /home/yadbash/powerball</code>

3. <code>cd /home</code>

4. <code>sudo chown -R user:group ./yadbash</code>

5. <code>cd /home/yadbash</code>

6. <code>sudo chow -R user:group ./powerball</code>

7. <code>unzip ./sparky-pb-correct-home-path-gif-spin-working.zip /home/yadbash/powerball</code>

8. cd /home/yadbash/powerball

9. ls -l  (verify sparkypowwerball.sh is set as execute file. if not: this is a problem. There are several *.sh files that must be executable.

10. Files are copied to /opt/yadbash/powerball/  & chown owner:group - NOT root user.

11. <code>cd /home/yadbash/powerball</code>

12. (Execute Sparky Powerball) <code>./sparkypowerball.sh</code>
    
        or
        
        /home/yadbash/powerball/sparkypowerball.sh
    

**Important** - Must be using Linux GNU with Yad Gui 1.0+ with Gtk-3.0+ desktop environment.

**Important** - A 2nd copy of yad name yad2 must be duplicated in /usr/bin 

    cd /usr/bin
    sudo cp yad /usr/bin/yad2


Tested on Debian 10 Buster, Debian 11 Bullseye and Debian 12 Bookworm. Should work on all Destkops.

----------------------
Screenshots:

![sparky-powerball01](https://user-images.githubusercontent.com/68208919/149611198-1972649b-d6f1-4bfb-9a0d-de058b526589.png)
![sparky-powerball02](https://user-images.githubusercontent.com/68208919/149611256-21fe21f2-b287-49ae-8302-775348c1c6c6.png)
![sparky-powerball03](https://user-images.githubusercontent.com/68208919/149611271-89441f40-8528-4cf7-b8f1-06523390e94a.png)
![sparky-powerball04](https://user-images.githubusercontent.com/68208919/149611282-bcf39a8c-6210-4a53-bace-bb51a67dbab4.png)
![sparky-powerball05](https://user-images.githubusercontent.com/68208919/149611288-738db17c-2724-4ce4-8f13-afe433160e6d.png)

