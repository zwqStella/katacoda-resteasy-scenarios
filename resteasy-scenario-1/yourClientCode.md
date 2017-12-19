In the third step, we added a method to server code. Now we can generate a corresponding client method using the API introduced in the last step.


Open file src/main/java/org/jboss/resteasy/katacoda_example_zoo/client/RequestSender.java and add a method to interact with the method we added to HelloResource. By *this.client = ClientBuilder.newClient();* in the constructor of RequestSender class, a Client instance has been created and stored in parameter "this.client".
