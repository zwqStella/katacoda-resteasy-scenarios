Now we can use the annotations introduced in the last step to create our own method at the server end. We can start with a very simple "hello world" method.


Open file src/main/java/org/jboss/resteasy/katacoda_example_zoo/server/services/HelloService.java and add a new method here. We are going to create a method which accepts a name via path parameter and return welcome to the name. The http verb we need here is get.
