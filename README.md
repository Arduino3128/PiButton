# PiButton
This is a simple Python Code for Raspberry Pi which allows User to "Shutdown" and "Reboot" their Pi using a physical button.  
Installation process:  
1.move the PiButton.py to /usr/local/bin/   
  >mv PiButton.py /usr/local/bin/   
2.Move the PiButton.sh to /etc/init.d/
  >mv PiButton.sh /etc/init.d/  
3.add the following line to the /etc/rc.local/ to run the code at Boot.  
  >sudo /etc/init.d/shutdown.sh start
