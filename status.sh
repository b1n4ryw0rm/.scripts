#!/bin/sh

battery () {
	~/.scripts/battery
}

wifi () {
	~/.scripts/wifi
}

timedate () {
	date '+%I:%M:%S %p'
}

clock () {
	date +"%d-%m-%Y %a %H:%M:%S"
}

lit () {
	brightnessctl | grep -oP '[^()]+%'
}

vol () {
	pulsemixer --get-volume | awk '{print $1}'
}

while :; do
	xsetroot -name "[$(battery)]  <<  $(wifi)  <<  LIT $(lit)  <<  VOL $(vol)%  <<  $(clock) "
	sleep 1s
done
