The main part of our server codes consist of three classes: Domain, Resource and Application.


**Domain** class defines the structure of the entity we use. In this case, Class Animal has three attributes namely id, kind and name. Getter and setter for all the fields and a default constructor is required for the server to work well.


**Application** class is where our JAX-RS components are registered. There are two kinds of registration, singleton and per-request. If you want all the requests to go to the same instance, or you want the server to hold its current status, you should use singleton mode. In this case, we want to keep a database at server, so it is necessary to use singleton mode. Each application class should define its application path by the annotation above the class.


**Resource** class is the most complex part because it bears most of the actions to be execute at server. Every annotated method in Resource class defines a function that can be requested by client. There are two ways to direct a request to its destination. One is @Path annotation. It defines the URL of the method. The other is http verb annotation, like @GET, @POST, @POST etc. These two definitions could be used separately or combined.  @Consumes annotation defines the content type of request. If the request does not have a content type correspondent to it, an exception would be thrown. @Produces annotation defines the content type of response. Resteasy would automatically convert the text content in request into POJO and deliver it to the method called as the parameters. Vise versa, the returned object would also be converted into the type defined by @Produces annotation and written into the http response. Resource class also have an @Path annotation above it, which can help you organising your RESTful APIs neatly.


# Parameters
Except for the entity in request body, many other information could be passed to server through all kinds of parameters. Path parameter is the most common one among them. @PathParam allows you to inject the value of named URI path parameters that were defined in @Path expressions. Regular expressions can be used to describe the format of this parameter. When you have a huge number of methods, this is a good practice to reduce ambitiousness.
```Java
@GET
@Path("{id : \\d+}")
//defines a param named "id", which is an integer
@Produces("application/json")
public Animal getAnimal(@PathParam("id")int id) {
	...
}
```
Query parameter and Matrix parameter are also used in this example. @QueryParam and @MatrixParam are used to extract these two kinds of parameters out of requests. But they shouldn't be defined in @Path annotation as path parameter. [Learn more about parameters injection](http://docs.jboss.org/resteasy/docs/3.1.4.Final/userguide/html_single/index.html#_PathParam)

# Your Own Code
Open file src/main/java/org/jboss/resteasy/katacoda_example_zoo/server/services/HelloService.java and add a new method here. We are going to create a method which accept a name via path parameter and return welcome to the name. The http verb we need here is get.
