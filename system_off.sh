percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep 'percentage:'|awk '{print $2}'| sed s/"%"//)
arr=$(wmctrl -l | grep -v "BDHF" | awk '{print $1}')
if [ $percentage -lt 80 ]; then
    for i in $arr
    do
        echo "Sessions closed $i"
        # $(wmctrl -ic $i) 
    done
    echo $(date '+At %d/%m/%Y on %I:%M:%S') "Battery percentage is" $percentage"%"
    sleep 10
    echo "Shutdown"
    fi
