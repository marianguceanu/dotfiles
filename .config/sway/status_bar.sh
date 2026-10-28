#!/bin/sh

date=$(date +'%A, %b %d')
time=$(date +'%I:%M %p')
vol="Volume $(pamixer --get-volume)%"

echo "$date | $time | $vol"
