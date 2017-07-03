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

1.  Installation on your ARM board

    a. **showmyarm32** is the application service to run on your board with **32 bit OS**



    b. **showmyarm64** is the application service to run on your board with **64 bit OS**



2.  Installation on your PC running Windows (Host PC)

    a. install_ShowMyArm.exe is the instalation program which will install the 32 bit or 64 bit Windows side.



    b. Alternatively ShowMyArm.zip contains the windows binaries if you whish to install it manually.


- to be completed



Limitations
-----------
- Works on local Network only (Class C), not outside world.
- UDP packages must not be blocked on your router / firewall / proxy / or whatever filters or forge UDP packages.

Issues
------
- to be completed


** THIS IS a WiP **

Disclaimer: Use at own risk


History Log:
------------
- initial commit
