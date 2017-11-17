Now we can use maven to build it into a war file.


`mvn clean install`{{execute}}


**Open a new terminal** and start WildFly standalone server.


`standalone.sh&`{{execute}}


Deploy "zoo.war" to server.


`cp target/zoo.war ~/wildfly-11.0.0.Final/standalone/deployments/`{{execute}}


Now our application could be successfully built and deployed. Use a simple curl command to test it.


`curl http://localhost:8080/zoo/animals/hello`{{execute}}
