Now we have a completed Resteasy server project, we can use maven to build it into a war file.


`mvn clean install`{{execute}}


Then we should deploy the archive into Wildfly and start it.


`cp target/zoo.war ~/wildfly-11.0.0.Final/standalone/deployments/`{{execute}}


**Open a new terminal** and execute


`~/wildfly-11.0.0.Final/bin/standalone.sh`{{execute}}


Now our application is successfully deployed, we can try it by using a simple wget command.


`cd /tmp
wget -q http://localhost:8080/zoo/animals/hello
cat hello`{{execute}}


"welcome" is what we got from server.


For more complex requests, we need to establish a client to send them.
