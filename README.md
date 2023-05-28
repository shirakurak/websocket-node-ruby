# websocket-node-ruby

A sample of WebSocket communication between a Node.js server and a Ruby client

## Server

```sh
npm install ws
```

```sh
$ node websocket-server.js
Client connected
Received data: 1: Ruby to Node
Received data: 2: Ruby to Node
Received data: 3: Ruby to Node
Received data: 4: Ruby to Node
Received data: 5: Ruby to Node
Received data: 6: Ruby to Node
Received data: 7: Ruby to Node
Received data: 8: Ruby to Node
Received data: 9: Ruby to Node
Received data: 10: Ruby to Node
Received data: 11: Ruby to Node
Received data: 12: Ruby to Node
Received data: 13: Ruby to Node
Received data: 14: Ruby to Node
Received data: 15: Ruby to Node
Received data: 16: Ruby to Node
Received data: 17: Ruby to Node
Client disconnected
```

## Client

```sh
gem install websocket-client-simple
```

```sh
ruby websocket-client.rb
This is Client
Waiting for 5 seconds
Waiting for 5 seconds
finish
received: you sent: 1: Ruby to Node
received: you sent: 2: Ruby to Node
received: you sent: 3: Ruby to Node
received: you sent: 4: Ruby to Node
received: you sent: 5: Ruby to Node
received: you sent: 6: Ruby to Node
received: you sent: 7: Ruby to Node
received: you sent: 8: Ruby to Node
received: you sent: 9: Ruby to Node
received: you sent: 10: Ruby to Node
received: you sent: 11: Ruby to Node
received: you sent: 12: Ruby to Node
received: you sent: 13: Ruby to Node
received: you sent: 14: Ruby to Node
received: you sent: 15: Ruby to Node
received: you sent: 16: Ruby to Node
received: you sent: 17: Ruby to Node
Thread stopped
```
