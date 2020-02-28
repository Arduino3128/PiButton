### BEGIN INIT INFO
# Provides: PiButton.py Required-Start: $remote_fs $syslog Required-Stop: 
# $remote_fs $syslog Default-Start: 2 3 4 5 Default-Stop: 0 1 6
### END INIT INFO
# If you want a command to always run, put it here Carry out specific functions when asked 
# to by the system
case "$1" in start) echo "Starting PiButton.py" 
   python3 /usr/local/bin/PiButton.py &
    ;;
  stop) echo "Stopping PiButton.py" pkill -f 
    python3 /usr/local/bin/PiButton.py
    ;;
  *) echo "Usage: /etc/init.d/PiButton.sh {start|stop}" exit 1
    ;;
esac
exit 0
