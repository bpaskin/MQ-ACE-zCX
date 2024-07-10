HOSTNAME=`hostname`
# Build container files
docker build --build-arg QMGR=QM1 --tag qm1:latest --file Dockerfile.mq .
docker build --build-arg QMGR=QM2 --tag qm2:latest --file Dockerfile.mq .
docker build --build-arg HOSTNAME=$HOSTNAME --tag ace:latest --file Dockerfile.ace .
 
# create volumes to be used for QMGR storage
docker volume create QM1data
docker volume create QM2data


