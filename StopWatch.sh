#!/bin/bash
#Stopwatch, displaying data in HH: mm: SS format

begin_at=$(date '+%s')

echo "Time Elapsed"

while [ 1 -eq 1 ]
do
    end_at=$(date '+%s')
    #Arithmetic operation: http://faculty.salina.k-state.edu/tim/unix_ sg/bash/ math.html
    ((interval=${end_at} - ${begin_at}))
    ((hours=${interval} / 3600))
    ((minutes=(${interval} % 3600) / 60))
    ((seconds=(${interval} % 3600) % 60))
    tput cr
    tput el
    printf " %02d:%02d:%02d" ${hours} ${minutes} ${seconds}
    sleep 0.5
done
