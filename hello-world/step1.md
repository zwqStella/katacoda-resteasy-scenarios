Java API for RESTful Web Services (JAX-RS) is a Java programming language API spec that provides support in creating web services according to the Representational State Transfer (REST) architectural pattern. Resteasy is a portable implementation of JAX-RS. In this tutorial, we'll use Resteasy to create a simple RESTful Web application and a client to invoke it.

# Prepare the environment

What we need includes: 
* Java 
* Maven (3.0.4 or higher)
* Web Container
* Resteasy


WildFLy is the best choice for web container, in which Resteasy API is pre-installed. In this case, we'll use Java 8, Maven 3.5.0 and WildFly 11.0.0 Final as our environment.


The structure of a Resteasy web application project is in correspondence with a maven web project. And it is shown in the editor in the right.


In the pom.xml, you should add some dependencies to support you application.


For the server end, the dependencies are:
```
<dependencies>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-jaxrs</artifactId>
      <version>4.0.0-SNAPSHOT</version>
      <scope>provided</scope>
   </dependency>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-servlet-initializer</artifactId>
      <version>4.0.0-SNAPSHOT</version>
      <scope>provided</scope>
   </dependency>
</dependencies>
```


For the client end, the dependencies are:
```
<dependencies>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-client</artifactId>
      <version>4.0.0-SNAPSHOT</version>
   </dependency>
   <dependency>
      <groupId>org.jboss.resteasy</groupId>
      <artifactId>resteasy-jackson-provider</artifactId>
      <version>2.3.2.Final</version>
   </dependency>
</dependencies>
```


Now we have the basic environment to working on.
