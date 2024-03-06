#!/bin/bash

# Reset variables
height=1
width=1

# Parse options
while getopts ":w:h:" opt; do
    case "$opt" in
        w) width="$OPTARG" ;;
        h) height="$OPTARG" ;;
        \?) echo "Invalid option: -$OPTARG" >&2 ;;
    esac
done

# Output width and height
echo "Width: $width"
echo "Height: $height"

# Calculate area
area=$((width * height))
echo "Area: $area"
