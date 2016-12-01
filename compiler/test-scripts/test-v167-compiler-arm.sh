#!/bin/bash
. test-config.sh
curl -X POST -H "Accept: application/json" -d '{"files":[{"filename":"Blink Example.ino","content":"\/*\n\tBlink\n\tTurns on an LED on for one second, then off for one second, repeatedly.\n\n\tThis example code is in the public domain.\n*\/\n\nvoid setup()\n{\n\t\/\/ initialize the digital pin as an output.\n\t\/\/ Pin 13 has an LED connected on most Arduino boards:\n\tpinMode(13, OUTPUT);\n}\n\nvoid loop()\n{\n\tdigitalWrite(13, HIGH); \/\/ set the LED on\n\tdelay(1000); \/\/ wait for a second\n\tdigitalWrite(13, LOW); \/\/ set the LED off\n\tdelay(1000); \/\/ wait for a second\n}\n"}],"libraries":[],"logging":true,"format":"binary","version":"167","fqbn":"chibitronics:esplanade:code"}' ${compiler_url}
