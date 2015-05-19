JM_ID=$(cat jmaster.properties|grep JM_ID| cut -d "=" -f2)
JM_IP=$(cat jmaster.properties|grep JM_IP| cut -d "=" -f2)
JM_PRT=8080

rm -f jenkins-cli.jar
wget http://$JM_IP:$JM_PRT/jnlpJars/jenkins-cli.jar

UPDATE_LIST=$( java -jar jenkins-cli.jar -s http://$JM_IP:$JM_PRT/ list-plugins | grep -e ')$' | awk '{ print $1 }' );

if [ ! -z "${UPDATE_LIST}" ]; then 
    echo Updating Jenkins Plugins: ${UPDATE_LIST}; 
    java -jar jenkins-cli.jar -s http://$JM_IP:$JM_PRT/ install-plugin ${UPDATE_LIST};
    java -jar jenkins-cli.jar -s http://$JM_IP:$JM_PRT/ safe-restart;
fi
