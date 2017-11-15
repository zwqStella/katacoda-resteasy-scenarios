Now we have a completed Resteasy server project, we can use maven to build it into a war file.


`mvn clean install`{{execute}}


WildFly Maven Plugin is added into the pom.xml to deploy the application on mvn install
```
<plugins>
   <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-surefire-plugin</artifactId>
      <configuration>
         <skip>true</skip>
      </configuration>
      <executions>
         <execution>
            <id>surefire-it</id>
            <phase>integration-test</phase>
            <goals>
               <goal>test</goal>
            </goals>
            <configuration>
               <skip>false</skip>
            </configuration>
         </execution>
      </executions>
   </plugin>
</plugins>
```


Now our application is successfully built and deployed, we can try it by using a simple curl command.


`curl http://localhost:8080/zoo/animals/hello`{{execute}}


"welcome" is what we got from server.


For more complex requests, we need to establish a client to send them.
