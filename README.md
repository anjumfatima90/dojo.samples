# dojo.samples

1. Clone the repository using `git@github.com:anjumfatima90/dojo.samples.git`
2. Run `mvn clean install` from the `dojoWARExample` folder to create the war in the target `dojoWARExample/target` folder.
3. To run locally in wlp folder, create a server using `bin/server create` command.
4. Then place the war in `wlp/usr/servers/defaultServer/dropins/spring` folder.
5. Update the `wlp/usr/servers/defaultServer/server.xml` file by adding `jsp.2-3` and `springBoot-2.0` features.
6. Run the server using `bin/server run` commmand from wlp folder.
7. To run the application using docker container, create a docker image using `docker build -t springboot .` from the application folder. The Dockerfile has steps which divides the fat application JAR/WAR into thin application JAR/WAR and library dependencies in two different layers called as docker multi-stage builds to create the docker image.
8. Then run the spring boot application in a docker container using `docker run -d --name springBootContainer -p 9080:9080 -p 9443:9443 springboot`
9. When the thin application has started, point your browser to the http://localhost:9080/ URL to access the application.
10. To stop and remove the docker conatiner use `docker stop springBootContainer` and `docker rm springBootContainer`
