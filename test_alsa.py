#!/usr/bin/env python3

import alsaaudio as alsa
import time

cap = alsa.Mixer("Capture", cardindex=0)

while True:
    for i in range(100,0,-1):
        if i not in [65,64,63,62,39,40,41]:
            cap.setvolume(i)
            time.sleep(0.2)