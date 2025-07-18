#!/usr/bin/env bash 

GEAR=fw-VoluMetrics
IMAGE=flywheel/volumetrics:$1
LOG=volumetrics-$1-$2

echo $IMAGE $LOG

# Command:
docker run -it --rm \
	-v $3/${GEAR}/app/:/flywheel/v0/app\
	-v $3/${GEAR}/utils:/flywheel/v0/utils\
	-v $3/${GEAR}/run.py:/flywheel/v0/run.py\
	-v $3/${GEAR}/${LOG}/input:/flywheel/v0/input\
	-v $3/${GEAR}/${LOG}/output:/flywheel/v0/output\
	-v $3/${GEAR}/${LOG}/work:/flywheel/v0/work\
	-v $3/${GEAR}/${LOG}/config.json:/flywheel/v0/config.json\
	$IMAGE
