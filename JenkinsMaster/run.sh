JenkinsMasterId=$(docker run -d -p 50000:50000 -p 8080:8080 -v /data/jenkins:/var/jenkins_home hoeghh/jenkins-master)
echo "Jenkins master ID: " $JenkinsMasterId
echo "JM_ID="$JenkinsMasterId > jmaster.properties
JenkinsMasterIp=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $JenkinsMasterId)
echo "Jenkins master IP: " $JenkinsMasterIp
echo "JM_IP="$JenkinsMasterIp >> jmaster.properties
