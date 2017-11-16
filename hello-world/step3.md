First, upgrade the version of maven to 3.5.0.
`source ~/.bashrc
mvn -version`{{execute}}



Now we can use maven to build it into a war file.


`mvn clean install`{{execute}}


In addition to this, WildFly Maven Plugin is added to profile "deploy-war", in order to deploy the application and start the WildFLy server on mvn install.
```
<plugins>
   <plugin>
      <groupId>org.wildfly.plugins</groupId>
      <artifactId>wildfly-maven-plugin</artifactId>
      <version>1.2.1.Final</version>
      <executions>
         <execution>
            <id>start</id>
            <phase>package</phase>
            <goals>
               <goal>start</goal>
            </goals>
         </execution>
         <execution>
            <id>deploy</id>
            <phase>pre-integration-test</phase>
            <goals>
               <goal>deploy-only</goal>
            </goals>
         </execution>
         <execution>
            <id>shutdown</id>
            <phase>install</phase>
            <goals>
               <goal>shutdown</goal>
            </goals>
         </execution>
      </executions>
   </plugin>
</plugins>
```
When using this profile, the Wildfly server would be started on pakage phase. Then the war file would be deployed to it before integration-test phase. And in the end, the server would be stoped automaticaly.


`mvn clean install -P deploy-war`{{execute}}



Now our application could be successfully built and deployed. But we have no access to it. To interact with it, we need to use Resteasy client API.
