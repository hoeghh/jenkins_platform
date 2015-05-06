JenkinsMasterId=$(docker run -d -p 8080:8080 -v /data/jenkins:/var/jenkins_home hoeghh/jenkins-master)
echo "Jenkins master ID: " $JenkinsMasterId
JenkinsMasterIp=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $JenkinsMasterId)
echo "Jenkins master IP: " $JenkinsMasterIp
