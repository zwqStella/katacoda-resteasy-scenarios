Now we can try to use our client to interact with our REST application. In order to make the client easier to use, we can add an exec maven plugin into it.
```
<plugins>
   <plugin>
      <groupId>org.codehaus.mojo</groupId>
      <artifactId>exec-maven-plugin</artifactId>
      <version>1.6.0</version>
      <executions>
         <execution>
            <id>exec</id>
            <phase>post-integration-test</phase>
            <goals>
               <goal>exec</goal>
            </goals>
         </execution>
      </executions>
      <configuration>
         <classpathScope>test</classpathScope>
         <executable>java</executable>
         <arguments>
            <argument>-classpath</argument>
            <classpath />
            <argument>org.jboss.resteasy.katacoda_example_zoo.client.AnimalClient</argument>
         </arguments>
      </configuration>
   </plugin>
</plugins>
```
The maven exec plugin will be executed at the "post-integration-test" phase. Use pre-defined profiles we can lauch the client.


`mvn clean install -P deploy-war,exec-client`{{execute}}

We can test all the methods in our AnimalResource class. And now you can edit both server and client codes to turn this into your own application.
