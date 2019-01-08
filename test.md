# SSH: change port to 22022

1. [Port selection](##Port Selection)
1. [Change Port for SSH to 22022](##Change Port for SSH to 22022)



<br>
##Port Selection

ICAAN classifies ports in two three categories:

- System/**well known** ports: **0-1023**
- User or **registered** ports: **1024-49151**
- Dynamic/**private** ports: **49152-65535**

Port numbers from ++49152 through 65535++ are usually ++safe to use++

So we will try to use a simple way to rember

Port **XX** will be  **XX**0**XX**

For example, SSH Port 22 will be 22022





<br>
## Change Port for SSH to 22022

`
vi /etc/ssh/sshd_config
`

Add Pot 22022 below #Port 22

<div style="color:white;background:black;">
\# default value.

\# If you want to change the port on a SELinux system, you have to tell
\# SELinux about this change.
\# semanage port -a -t ssh_port_t -p tcp #PORTNUMBER
\#
\#Port 22
==Port 22022==
\#AddressFamily any
\#ListenAddress 0.0.0.0
\#ListenAddress ::
</div>


Add port to firewall
firewall-cmd --permanent --zone=public --add-port=22022/tcp
firewall-cmd --reload	


SELinux 
SELinux may avoid the SSH daemon going to use a different port

	Check for SELinux 
	Sestatus

If so

semanage port -a -t ssh_port_t -p tcp 22022

If ERROR on	semanege

	Need to installation it

		sudo yum -y install policycoreutils-python


Re start SSH service

systemctl restart sshd.service

Check it
systemctl status sshd

ss -tlpn| grep ssh


ONLINE TEST

https://sshcheck.com/

https://es.infobyip.com/sshservertest.php  [SPAIN]
