rm -f jenkins-cli.jar
wget http://localhost:8080/jnlpJars/jenkins-cli.jar
UPDATE_LIST=$( java -jar jenkins-cli.jar -s http://172.17.0.1:8080/ list-plugins | grep -e ')$' | awk '{ print $1 }' );
if [ ! -z "${UPDATE_LIST}" ]; then 
    echo Updating Jenkins Plugins: ${UPDATE_LIST}; 
    java -jar jenkins-cli.jar -s http://172.17.0.1:8080/ install-plugin ${UPDATE_LIST};
    java -jar jenkins-cli.jar -s http://172.17.0.1:8080/ safe-restart;
fi
