#!/bin/bash
export USER="$(id -u -n)"
export LOGNAME=${USER}
export HOME=/sphenix/u/${LOGNAME}
source /opt/sphenix/core/bin/sphenix_setup.sh new  

export MYINSTALL=/sphenix/user/mitrankova/analysis/K_short_new/K_short_newarticle_sPHENIX/install
export LD_LIBRARY_PATH=$MYINSTALL/lib:$LD_LIBRARY_PATH
export ROOT_INCLUDE_PATH=$MYINSTALL/include:$ROOT_INCLUDE_PATH

source /opt/sphenix/core/bin/setup_local.sh $MYINSTALL

nEvents=0

echo running: runKShortReco.sh $1
root.exe -q -b Fun4All_FieldOnAllTrackers.C\($nEvents,\"$1\"\)
echo Script done

