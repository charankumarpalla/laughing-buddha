#!/bin/bash

# @charankumar.palla@gmail.com
# simple shell script to trigger a command depending on file modified


time=$(ls -lT $1 | awk -F" "  '{ print $8 }')
# echo $time
echo "Monitoring $1 File Changes started at $time"
while :
do
   chk_time=$(ls -lT $1 | awk -F" "  '{ print $8 }')
   if [ "$chk_time" != "$time" ]
   then
   	  # date

   	  echo -e "\n[TriggerShellScript] clean exit - waiting for changes before restart"
	  echo "[TriggerShellScript] restarting due to changes in $1..."
	  echo -e "[TriggerShellScript] starting $1\n\n"
   	  (exec $1)
      # echo "File modified"

      time=$chk_time
      # break; # if you want to stop the script once mail is send
   fi
   sleep 1  # 5sec wait time
done