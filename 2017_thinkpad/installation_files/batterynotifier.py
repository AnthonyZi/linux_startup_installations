#!/usr/bin/python
import os
import sys
import getopt

ff = open("shit", "w")
ff.write(str(sys.argv))
ff.close()

try:
        config_file = open("/usr/local/bin/.customisation.config", "r")
        config_lines = config_file.readlines()
        config_file.close()
except:
        pass



try:
        opts, args = getopt.getopt(sys.argv[1:], "t", ["toggle_notification"])
        config_change = False
        for opt, arg in opts:
                if opt in ("-t", "--toggle_notification"):
                        for i in xrange(len(config_lines)):
                                if "batterynotifier" in config_lines[i].split(" ")[0] and "notification" in config_lines[i].split("=")[0]:
                                                if "on" in config_lines[i].split("=")[1]:
                                                        config_lines[i] = "=".join([config_lines[i].split("=")[0], config_lines[i].split("=")[1].replace("on", "off")])
                                                        notify_state = "off"
                                                elif "off" in config_lines[i].split("=")[1]:
                                                        config_lines[i] = "=".join([config_lines[i].split("=")[0], config_lines[i].split("=")[1].replace("off", "on")])
                                                        notify_state = "on"
                                                else:
                                                        config_lines[i] = "batterynotifier notification = on"
                                                        notify_state = "on"

                                                notify_cmd_temp = "/usr/bin/notify-send batterynotifier 'Turned notification {0}' -t 1".format(notify_state)
                                                os.system(notify_cmd_temp)

                                                config_change = True
        if config_change:
                config_file = open("/usr/local/bin/.customisation.config", "w")
                for line in config_lines:
                        config_file.write(line)
                config_file.close()
                sys.exit(1)

except getopt.GetoptError:
        print "batterynotifier.py -t [--toggle_notificatoin]"
        sys.exit(10001)


for line in config_lines:
        if "batterynotifier" in line.split(" ")[0]:
                if "notification" in line.split("=")[0]:
                        if "off" in line.split("=")[1]:
                                sys.exit(0)


loadstring = os.popen("acpi").read().strip().split(" ")
load = ""
isDischarging = False
for l in loadstring:
        if "%" in l:
                load = l.strip(",").strip("%")
        if "Discharging" in l:
                isDischarging = True
if load != "":
        load = int(load)
else:
        load = -1

temperature = float(str(os.popen("acpi -t").read().strip().split("ok,")[1].split("degree")[0].strip()))
if not load == -1:
        if int(temperature) > 45:
                notify_cmd_temp = "/usr/bin/notify-send batterynotifier 'Temperature-Warning: battery temperature is {0:.2f} degrees' -t 20000 -u low".format(temperature)
                os.system(notify_cmd_temp)
        elif int(temperature) > 65:
                notify_cmd_temp = "/usr/bin/notify-send batterynotifier 'Temperature-Warning: battery temperature is {0:.2f} degrees' -t 20000 -u critical".format(temperature)
                os.system(notify_cmd_temp)

        if load > 90 and not isDischarging:
                notify_cmd_load = "/usr/bin/notify-send batterynotifier 'Battery charged! (" + str(load) + "%) ' -t 5000 -u low"
                os.system(notify_cmd_load)
        if load < 10:
                notify_cmd_load = "/usr/bin/notify-send batterynotifier 'Battery almost empty! (" + str(load) + "%) ' -t 5000 -u low"
                os.system(notify_cmd_load)
else:
        if int(temperature) > 70:
                notify_cmd_temp = "/usr/bin/notify-send batterynotifier 'Temperature-Warning: battery temperature is {0:.2f} degrees' -t 20000 -u critical".format(temperature)
                os.system(notify_cmd_temp)
