#!/usr/bin/python
import sys
import os

#table = [3, 6, 13, 27, 57, 118, 244, 504, 1041, 2149, 4437]
table = [6, 13, 27, 57, 118, 244, 504, 1041, 2149, 4437]

brightness_file = open("/sys/class/backlight/intel_backlight/brightness")
lightlevel = int(brightness_file.readlines()[0].strip("\n\r"))
brightness_file.close()

#if len(sys.argv) < 2:
#        sys.exit(1)
if len(sys.argv) > 1:
	inp = str((sys.argv)[1])
else:
	inp = "inc"



nextbrightness = lightlevel
if "inc" in inp:
        for i in range(len(table)):
                if table[-i] > lightlevel:
                        nextbrightness = table[-i]

if "dec" in inp:
        for i in range(len(table)):
                if table[i] < lightlevel:
                        nextbrightness = table[i]

brightness_file = open("/sys/class/backlight/intel_backlight/brightness", "w")
brightness_file.write(str(nextbrightness))
brightness_file.close()

notify_cmd = "notify-send Brightness 'set to: {0:.2f}%' -t 1 -u low".format(100.0*nextbrightness/table[-1])
os.system(notify_cmd)
