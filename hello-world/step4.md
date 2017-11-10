At the client end we also need a Domain class to support our actions. com.restfully.client.Animal is identical to com.restfully.zoo.domain.Animal. We use a plain java project to show the usage of Resteasy client api. 


At first we need a javax.ws.rs.client.Client instance to execute all our requests. Class ClientBuilder at the same package has a static method to build one for us. We can keep the instance and need not to create it every time.


# Basic Usage
Commonly, a request looks like this:
```Java
String hello = client.target("http://localhost:8080/zoo/animals/hello").request().get(String.class);
```
Client.target() method receives the URI of the target of the request to be sent and returns a WebTarget Object. Then we can call its request() method to get a Builder. A Builder instance has multiple iterable methods to configure itself. You can set accept-media-types using accept() method. And it also has a series of methods correspondent with http verbs, such as get, post and put. These methods receive all the content you want to send in you request as their parameters and returns the content of response directly. At both server and client end, we should only deal with our POJOs instead of serialized text. Resteasy can do the transformation automatically according to our configurations about content type.


Sometimes, exceptions would be thrown due to erronous http status code of response. We should catch these exceptions and analyse what happened judged by its type.
