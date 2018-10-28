socket.io
it is a javascript library for real time web applications
it enables real time bi directional communication between web clients and servers
consists of two parts client side library that runs in web browser and a server side built in node js.
Reeal time applications are applications that functions within a period that user sensesas immediate or current
examples of real time applications are messenger apps,push notifications,online gaming, collaboration applications

Sockets work based on events. There are some reserved events, which can be accessed using the socket object on the server side.

These are −
Connect
Message
Disconnect
Reconnect
Ping
Join and
Leave
The client-side socket object also provides us with some reserved events, which are −
Connect
Connect_error
Connect_timeout
Reconnect, etc

builtin events are not of much use as we need to differentiate between events.
custom events can be created and fired in socket.io using the socket.emit()

Broadcasting means sending a message to all connected clients. Broadcasting can be done at multiple levels.
We can send the message to all the connected clients, to clients on a namespace and clients in a particular room

io.sockets.emit() is used to broadcast to all clientto show an user a message on joining use socket.emit()
to broadcast to other users without new user use socket.broadcast.emit()
Socket.IO allows you to “namespace” your sockets, which essentially means assigning different endpoints or paths. This is a useful feature to minimize the number of resources (TCP connections) 
and at the same time separate concerns within your application by introducing separation between communication channels. Multiple namespaces actually share the same WebSockets connection
 thus saving us socket ports on the server.
 
 To set up a custom namespace, we can call the ‘of’ function on the server side 
 
 Within each namespace, you can also define arbitrary channels that sockets can join and leave. These channels are called rooms. Rooms are used to further-separate concerns. Rooms also share
 the same socket connection like namespaces. One thing to keep in mind while using rooms is that they can only be joined on the server side.