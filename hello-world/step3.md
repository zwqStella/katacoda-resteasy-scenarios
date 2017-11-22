Since the WildFLy server was started in the current terminal, we should **Open a new terminal** to avoid confusion.


Now we can use maven to build it into a war file.


`mvn clean install`{{execute}}


Deploy "zoo.war" to server.


`cp target/zoo.war ~/wildfly-11.0.0.Final/standalone/deployments/`{{execute}}


Now our application could be successfully built and deployed. Use a simple curl command to test it.


`curl http://localhost:8080/zoo/animals/hello`{{execute}}
