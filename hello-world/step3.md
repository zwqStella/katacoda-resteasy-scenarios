Now we have a completed Resteasy server project, we can use maven to build it into a war file.


`mvn clean install`{{execute}}


Then we should deploy the archive into Wildfly and start it.


`cp target/zoo.war ${WILDFLY}/standalone/deployments/`{{execute}}


Open a new terminal and execute


`standalone.sh`{{execute}}


Now our application is successfully deployed, we can try it by using a simple wget command.


`wget -q http://localhost:8080/zoo/animals/hello`{{execute}}
`cat hello`{{execute}}


"welcome" is what we got from server.
