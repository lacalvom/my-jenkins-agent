# my-jenkins-agent
Container image created to be used as a Jenkins agent in a Jenkins CI/CD server

***my-jenkins-agent*** is a container image created to be used as a ***Jenkins agent*** on a ***CI/CD*** server based on the image: ***jenkins/ssh-agent:4.13.0-jdk11*** which already comes with **Java**'s **JDK11** installed, and to which some more tools have been added, necessary for this particular use case .

In this image, **Maven**, **Google Cloud SDK**, and **Podman** have been additionally installed, in order to build container images and publish them.

For building the container image, assuming we run the command in the same directory where the ***Dockerfile*** is:
```bash
docker build -t my-jenkins-agent:latest .
```

To lift a container and test it:
```bash
docker run --rm -it --name myagent my-jenkins-agent:latest bash
```
To make things easier, there is a ***Makefile*** with all these tasks defined with which you can create a container image, test it and publish it to ***Docker Hub*** if necessary.

For details about container creation check out the ***Dockerfile***.
