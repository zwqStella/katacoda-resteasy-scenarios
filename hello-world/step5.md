Now we can try to use our client to interact with our REST application. In order to make the client easier to use, we can add an exec maven plugin into it.
```
<plugin>
   <groupId>org.codehaus.mojo</groupId>
   <artifactId>exec-maven-plugin</artifactId>
   <version>1.2.1</version>
   <configuration>
      <executable>java</executable>
      <arguments>
         <argument>-classpath</argument>
         <classpath />
         <argument>com.restfully.client.Main</argument>
      </arguments>
   </configuration>
</plugin>
```
Then we can use mvn exec to lauch it.


`cd ~/tutorial/client/
mvn exec:exec`{{execute}}

We can test all the methods in our AnimalResource class. And now you can edit both server and client codes to turn this into your own application.
