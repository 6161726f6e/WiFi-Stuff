alias monIF='iw dev wlan0 interface add wlan0mon type monitor; ip link set wlan0mon up;'
function capPrint() {
# input kismet.csv
  cat $1| cut -d ';' -f 3,4,6,8,9,22 | column -t -s\;
}
function capPrint2() {
# input .csv
  cat $1| sed -n '/Station/q; p;' | sed 's/\# IV/\#IV/' | cut -d',' -f 1,4,6,7,8,9,11,14 | awk -v FS=, '{print $8"," $1"," $2"," $3"," $4"," $5"," $6"," $7","}' | column -t -s, 
}

