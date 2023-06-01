# dtaas-wt-swap
This repository contains a water-tank model swap experiment for DTaaS. The experiment uses the Maestro co-orchestration engine for FMI-based co-simulation with the Model Swap feature including a FaultInject extension. The repository is a Docker-less version of the experiment at https://github.com/lausdahl/fmiSwap for use on the DTaaS platform.

## Install in DTaaS workspace:
```
git clone git@github.com:hejersbo/dtaas-wt-swap.git <WORKSPACE>
```

## Run in DTaaS workspace:
```
cd <WORKSPACE>/digital_twins/water_tank_swap
./wt-run.sh
./post-process.sh
```
The `post-process.sh` runs an experiment specific python plot of outputs. Plot results are in folder `post`.
