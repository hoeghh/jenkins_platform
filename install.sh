cd JenkinsSlave
./build.sh
cd ..
cd JenkinsMaster
./build.sh
./run.sh
sleep 10
./update_plugins.sh
cd ..
