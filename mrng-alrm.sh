echo $1
echo $2

# Wait until I fall asleep
sleep $(( 00*60 ))

# Get the number of seconds to suspend for
sec=$(( `date -d "May 10, 2014 06:00:00" +%s` - `date +%s` ))

# Put the computer to sleep
sudo rtcwake -s $sec -u -m mem

# Increase the volume in the morning
amixer set 'Master' 100%
