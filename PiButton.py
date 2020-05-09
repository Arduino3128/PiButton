import RPi.GPIO as GPIO
import time
import subprocess
GPIO.setmode(GPIO.BCM)
GPIO.setup(17, GPIO.IN, pull_up_down=GPIO.PUD_UP)
state=GPIO.input(17)
x=0
while x==0:
    state=GPIO.input(17)
    if state==0:
        time.sleep(3)
        state=GPIO.input(17)
        if state==0:
            x=1
            subprocess.call("reboot", shell=False)
        elif state==1:
            x=1
            subprocess.call(['shutdown', '-h', 'now'], shell=False)

