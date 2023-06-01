#!/bin/sh

echo Configuring extension
export MAESTRO=../../tools
export FSP=../../models
echo "\t Maestro path: $MAESTRO"
echo "\t FMU search path: $FSP"

echo "Generating Mabl specifications"

mkdir -p transition

$MAESTRO/maestro import sg1 ./FaultInject.mabl mm1.json simulation-config.json -fsp $FSP -output stage1/

$MAESTRO/maestro import sg1 ./FaultInject.mabl mm2.json simulation-config.json -fsp $FSP -output transition/stage2/


echo "Simulating specifications"

$MAESTRO/maestro  interpret stage1/spec.mabl ./FaultInject.mabl -tms 220 -transition transition -output stage1 2>&1 | tee out.txt
