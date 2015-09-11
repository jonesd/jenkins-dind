jenkins-dind
====

run -p 8080:8080 -p 50000:50000 -v $PWD/data:/var/jenkins_home -ti  --privileged   jenkins-dind

