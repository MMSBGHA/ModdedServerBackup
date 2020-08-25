#!/bin/bash
java -Xmx2G -XX:MaxPermSize=256M -jar forge-1.12.2-14.23.5.2847-universal.jar "$@"
read -n1 -r -p "Press any key to close..."
