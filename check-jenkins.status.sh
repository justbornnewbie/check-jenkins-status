#!/bin/bash
d=$(docker ps -a | grep -i $1 | awk '{print $9}')
if [[ "$d" != "Up"  ]]
then

        docker ps -a | awk '{ print $1,$2 }' | grep $1 | awk '{print $1 }' | xargs -I {} docker rm -f {}
        docker run -d -p 8080:8080 -v /opt/docker/jenkins:/var/jenkins_home --name jenkins jenkins/jenkins
echo "docker reinstalled"
else
        echo "jenkins service is already up and running"
fi
