#!/usr/bin/env python3

# A Python Script That Leverages Xrandr Binary To Push DELL U2713HM @ 2560x1440 Resolution

import os, sys, time

def main():
    try:
        os.system('/usr/bin/xrandr --newmode "2560x1440_60.00" 163.711 2560 2608 2640 2720 1440 1443 1448 1468 -hsync -vsync')
        os.system('/usr/bin/xrandr --addmode HDMI-1 "2560x1440_60.00"')
        os.system('/usr/bin/xrandr --output HDMI-1 --mode "2560x1440_60.00"')
        time.sleep(3)
        print('HDMI-1 Interface Is Set To Post At 2560x1440')
    except OSError:
        try:
            print('The System Encountered An Error \n')
            sys.exit()
        except SystemExit:
            print('Exiting... \n')

if __name__ == '__main__':
    main()
