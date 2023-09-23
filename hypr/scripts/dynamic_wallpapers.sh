#!/bin/zsh

swaybg -i $(find /home/monkeywings/Documents/Backgrounds -type f | shuf -n1) -m fill &
OLD_PID=$!

while true; 
do
    sleep 3600
    swaybg -i $(find /home/monkeywings/Documents/Backgrounds -type f | shuf -n1) -m fill &
    NEXT_PID=$!
    sleep 5
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done

