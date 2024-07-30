# Netunne-Provider
The package available has .PHP files with the source code of the Netunne Provider

A Linux network manager with a web interface, focused on bandwidth and hotspot control

It also incorporates a Debian-based operating system, using Knoppix init scripts and a graphical installation.

Netunne is perfect for small ISPs that need an easy-to-maintain server.

Some features described below: * Hotspot, in a credit-based system, users can connect to the internet for a limited period of time. * Bandwidth control (with layer 7), easily configured in a web interface. * I18n, in Brazilian Portuguese and English (needs revision) * Ajax web interface


Registro do Servidor

ID - ( A4910210 ) userkey

user - ( 00011200003 ) Chave

2100cfa754e97e34089167db74ccc25a  

/// #certificate, but it is not necessary because the key server no longer works and is offline

#VM VirtualBox - Netunner 1.61 - Last version 
--> https://mega.nz/file/JqdiQZxJ#ZkZaBWOtqXtktIPnHPe_mjAjujgfOZG8FNOQMAb4hpc  

////////////
#LINK TO DOWNLOAD ISO Netunne Provider - v1.39 - This iso does not proxy option
--> https://mega.nz/file/t7s3GDQQ#9k8sJKpdmQvVWFFRPlzo647Yf6_T0HYsa6N-TxDEWBY

/////////////////////////////////////////////

 
You will need a program that does SFTP, I recommend Filezilla, which can be obtained at: http://filezilla-project.org/download.php

You will also need a PHP editor, it could be PHP Editor or Notepad++, the normal Windows Notepad will not work, the Windows Wordpad might work.


#Changing Neptune
After unzipping the package, access and change a PHP file inside, for example NEXUS/nexus/core/nlib/core_common.php define ("PRODNAME","Netunne"); define("PRODCLASS","Provider"); Change it to: define ("PRODNAME","Netunne"); define ("PRODCLASS","Pr0vid3r");

Save the file and open Filezilla.

In Filezilla, enter the IP of your Netunne, user: root, password: (administrator password) and port 22 (we will not connect via FTP, but rather via SFTP (FTP over SSH).

Once connected, you will see the entire file tree of your Neptunne, be careful as any changes could damage the system.

Navigate on the right (remote) side to the folder: /NEXUS/nexus/core/nlib/

Rename core_commom.php to core_common.nx

On the left (local) side, navigate to the folder containing the modified core_common.nx.

Drag core_common.nx from the left side to the right side, filezilla will ask if you want to overwrite it, say yes.

If everything went well, access your netunne normally and go to the Info option. Update tab, you will see the new system name, instead of Provider.




OBS:
Liberar o chcp sem ter licença user estas regras no rf-filter se nao o maquina nao pega o dhcp 
https://www.tolaris.com/2009/07/13/disabling-reverse-path-filtering-in-complex-networks/




///////////////////////////////////////////
Desenvolvido por 
Allan Denot
https://allandenot.com/about/
