#!/bin/bash
set -e
# commented out some demos that are run on Jenkins with celery
#for demo_dir in $(find $1 -type d | sort); do
#   if [ -f $demo_dir/job_hazard.ini ]; then
#       python -m openquake.commands engine --run $demo_dir/job_hazard.ini
#       python -m openquake.commands engine --run $demo_dir/job_risk.ini --hc -1
#   fi
#done
# run the other demos
if [ ! -d "$1" ]; then
    echo "Please specify the location of the folder containing the demos. Aborting." >&2
    exit 1
fi

for ini in $(find $1 -name job.ini | sort); do
    python -m openquake.commands engine --run $ini
done

# do something with the generated data; -3 is LogicTreeCase3ClassicalPSHA
python -m openquake.commands export hcurves-rlzs -3 --exports hdf5 -d /tmp
python -m openquake.commands engine --lhc
MPLBACKEND=Agg python -m openquake.commands plot -3
MPLBACKEND=Agg python -m openquake.commands plot_uhs -3

# fake a wrong calculation still in executing status
python -m openquake.commands db set_status 1 executing
# repeat the failed/executing calculation, which is useful for QGIS
python -m openquake.commands engine --run $1/hazard/AreaSourceClassicalPSHA/job.ini
