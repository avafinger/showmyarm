ShowMyArm Application
=====================

ShowMyArm is a small application to find your board, the MAC address and IP of your board (or boards) running DHCP on your network from a Windows Box remotely.

Have you ever wondered what is the MAC address, IP address and possibly which kernel version running when you first boot your embedded arm boards with DHCP without going to your Wifi / Ethernet router?
ShowMyArm will find all the boards with a single click from your Windows remotely, this is specially useful when you have your board without HDMI / TVOUT display output and the IP is assigned on the fly or renewed with differnet IP address.
With ShowMyArm you will find the board (or boards) from a Windows Box and fire a ssh session to connect to the board with a single Click.

It should work with any Arm Board, 32 bit or 64 bit and possible with all Windows version if Windows firewall or Windows Defender allows it to run.

It needs to be tested on:
- Banana Pi
- Nano Pi
- Orange Pi
- Odroid

Instructions to Install
-----------------------

1.  Testing on your ARM board (Daemon)

    a. **showmyarm32** is the application service to run on your board with **32 bit OS**


		sudo ./showmyarm32 -port 8888 -board "Name of the board you want to show"
 

    b. **showmyarm64** is the application service to run on your board with **64 bit OS**


		sudo ./showmyarm64 -port 8888 -board "Name of the board you want to show"

    c. If you don't want to login usinf TTL debug to install service, just add the call 
       to showmyarm32 or 64 to your rc.local file, something like:

		edit /etc/rc.local and add

		#!/bin/sh -e
		#
		# rc.local
		#
		# This script is executed at the end of each multiuser runlevel.
		# Make sure that the script will "exit 0" on success or any other
		# value on error.
		#
		# In order to enable or disable this script just change the execution
		# bits.
		#
		# By default this script does nothing.
		sudo ./showmyarm32 -port 8888 -board "MyBoardName"
		exit 0



    d. Install service and reboot

2.  Install service for each ARM board (service)

    - to be completed


3.  Testing with on Linux X64_64 on your PC (Host PC) without installing service on board side
    *PS* it need showmyarm32 or showmyarm64 running on board side to get some output


		./findmyarm64 8888


4.  Installation on your PC running Windows (Host PC)


    a. install_ShowMyArm.exe is the instalation program which will install the 32 bit or 64 bit Windows side.



    b. Alternatively ShowMyArm.zip contains the windows binaries if you whish to install it manually.


       
- to be completed



Limitations
-----------
- Works on local Network only (Class C), not outside world.
- UDP packet (layer 3) must not be blocked on your router / firewall / proxy / or whatever filters or forge UDP packet (layer 3).


Issues
------
- UDP packet (layer 3) missing, seems to be fixed


** THIS IS a WiP **

Disclaimer: Use at own risk


History Log:
------------
- initial commit
- initial test with board side and X86 side with linux binary for now
- added MAC address to output