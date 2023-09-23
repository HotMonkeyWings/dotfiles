#!/bin/zsh

state="/home/monkeywings/.config/hypr/togglemonitorlock"
booleanvalue="false"

if [[ -f ${state} ]]; then
     booleanvalue=$(cat ${state})
fi

if [[ ${booleanvalue} == "true" ]]; then
     wlr-randr --output DP-2 --pos 0,0
     echo "false" > ${state}
else
     wlr-randr --output DP-2 --pos 2000,2000
     echo "true" > ${state}
fi
