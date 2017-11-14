# Prepare the environment

What we need includes: 
* Java
* Maven (3.0.4 or higher)
* Web Container
* Resteasy


WildFLy is the best choice for web container, in which Resteasy is pre-installed. In this case, we'll use Java 8, Maven 3.5.0 and WildFly 11.0.0 Final as our environment.


The structure of a Resteasy web application project is in correspondence with a maven web project. And it is shown in the editor in the right.


In the pom.xml, you should add some dependencies to support you application.


Define the version of Resteasy used.
```
<properties>
   <resteasy.version>3.1.4.Final</resteasy.version>
</properties>
```



Dependencies required by server:
```
<dependencies>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-jaxrs</artifactId>
      <version>${resteasy.version}</version>
      <scope>provided</scope>
   </dependency>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-servlet-initializer</artifactId>
      <version>${resteasy.version}</version>
      <scope>provided</scope>
   </dependency>
</dependencies>
```
For the jars belowed have been included in Wildfly, it is a wise decision to set the scope as "provided" to minimize the war file.


Dependencies required by client:
```
<dependencies>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-client</artifactId>
      <version>${resteasy.version}</version>
      <scope>test</scope>
   </dependency>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-jackson-provider</artifactId>
      <version>${resteasy.version}</version>
      <scope>test</scope>
   </dependency>
</dependencies>
```
*Resteasy-jackson-provider is used to support the transformation of application/json media type. Resteasy also has many other kinds of providers, see [resteasy providers](https://mvnrepository.com/search?q=resteasy+provider)*


Now we have the basic environment to working on.
