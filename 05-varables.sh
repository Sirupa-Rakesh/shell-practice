#! bin/bash
####### special varables #########
echo " all arg passed to script : $@"
echo "number of arg passed to script : $#"
echo "script name : $0"
echo "present working directory : $PWD"
echo " who is running the script : $USER"
echo " home directory of user : $HOME"
echo "process id of this script : $$"
sleep 100 &
echo " process id of last background process : $!"
echo "all arg passed to script : $*"
