sound_volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
battery_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
date_formatted=$(date "+%Y-%m-%d %X")

echo "$sound_volume | $battery_capacity% | $date_formatted"
