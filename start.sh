docker run -d  --name QM1 -p 1414:1414  -v QM1data:/mnt/mqm qm1:latest
docker run -d  --name QM2 -p 1415:1414  -v QM2data:/mnt/mqm qm2:latest
docker run -d  --name ace -p 7600:7600  ace:latest

