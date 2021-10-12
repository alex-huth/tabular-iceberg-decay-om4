#!/bin/bash

#Must be run from the history directory for each experiment, on analysis.
#This script untars all iceberg_trajectory.nc files from 1990-2018, and
#concatenates them into a single file.

long=`hostname`
short="${long:0:2}"
if [ "$short" != "an" ]; then
    echo "Need to be on analysis"
else

    module load nco
    count=0

    mkdir temp2
    mv *traj*.nc temp2

    #rm iceberg_trajectories.nc
    for file in *.tar; do
	filename="${file%%.nc.tar}";

	if [ "$filename" -lt 19900000 ]
	then
	    continue
	fi
	echo $filename;

	for file_type in iceberg_trajectories
	do
    	    new_file=./$filename.$file_type.nc
            if [ ! -f "$new_file" ]
    	    then
    		tar -xvf $file $new_file
		count=$((count + 1))
    	    fi
	done
    done

    if [ $count -gt 0 ]; then
	mkdir temp
	mv *traj*.nc temp
	ncrcat ./temp/* iceberg_trajectories_1990_2017.nc
	rm -rf temp
	mv ./temp2/* .
	rmdir temp2
    else
	echo "no iceberg_trajectories.nc found!"
    fi
fi
