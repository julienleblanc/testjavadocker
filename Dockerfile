FROM java:7
ENV FOO bar
#COPY TestFormationDocker.java /
COPY src /home/root/testformationdocker/src
#RUN javac TestFormationDocker.java
WORKDIR /home/root/testformationdocker
RUN mkdir bin
RUN javac -d bin src/TestFormationDocker.java
#ENTRYPOINT ["java", "TestFormationDocker"]
RUN apt-get update && apt-get -y install vim
ENTRYPOINT ["java", "-cp", "bin", "TestFormationDocker"]
