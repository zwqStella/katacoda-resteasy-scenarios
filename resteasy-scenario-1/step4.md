At the client end we also need the Domain class to support our actions. In this case, we can use the same class as the server did and use a plain java project to show the usage of Resteasy client API. 


At first we need a javax.ws.rs.client.Client instance to execute all our requests. Class ClientBuilder at the same package has a static method to build one for us. We can keep the instance and need not to create it every time.


# Basic Usage
Commonly, a request looks like this:
```Java
String hello = client.target("http://localhost:8080").request().get(String.class);
```
Client.target() method receives the URI of the target of the request to be sent and returns a WebTarget Object. Then we can call its request() method to get a Builder. A Builder instance has multiple iterable methods to configure itself. For instance, you can set accept-media-types using accept() method. And it also has a series of methods correspondent with http verbs, such as get, post and put. These methods receive all the content you want to send in you request as their parameters and returns the content of response directly. At both server and client end, we should only deal with our POJOs instead of serialized text. Resteasy can do the transformation automatically according to our configurations about content type.


Sometimes, exceptions would be thrown due to erroneous http status code of response. We should catch these exceptions and analyse what happened judged by its type.

# Your Own Code
Open file src/main/java/org/jboss/resteasy/katacoda_example_zoo/client/RequestSender.java and add a method to interact with the method we added to HelloResource. By *this.client = ClientBuilder.newClient();* in the constructor of RequestSender class, a Client instance has been created and stored in parameter "this.client".
