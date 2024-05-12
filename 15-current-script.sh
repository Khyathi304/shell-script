#!/bin/bash

COURSE="Devops from Current Script"
echo "Before calling another Sciprt :$COURSE"
echo "Process ID of current script: $$"

#./16-other-script.sh
source./16-other-script.sh

echo "After calling other script: $COURSE"