#!/bin/bash

MONITORS_JSON=$(hyprctl monitors -j)

# detect internal display (usually eDP)
INTERNAL=$(echo "$MONITORS_JSON" | jq -r '.[] | select(.name | test("^eDP")) | .name')

# count external monitors
EXTERNAL_COUNT=$(echo "$MONITORS_JSON" | jq '[.[] | select(.name | test("^(HDMI|DP)"))] | length')

if [ "$EXTERNAL_COUNT" -gt 0 ]; then
    hyprctl keyword monitor "$INTERNAL,disable"
else
    hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
fi
