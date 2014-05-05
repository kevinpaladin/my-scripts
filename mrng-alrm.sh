# Wait until I fall asleep
sleep $(( 20*60 ))

# Get the number of seconds to suspend for
sec=$(( `date -d "May 5, 2014 06:20:00" +%s` - `date +%s` ))

# Put the computer to sleep
sudo rtcwake -s $sec -u -m mem

# Increase the volume in the morning
amixer set 'Master' 100%
