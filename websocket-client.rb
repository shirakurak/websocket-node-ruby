require 'websocket-client-simple'

client = WebSocket::Client::Simple.connect 'ws://localhost:8080'

client.on :message do |msg|
  puts "received: #{msg.data}"
end

client.on :close do |e|
  puts 'Connection closed'
end

client.on :error do |e|
  puts "Error: #{e.message}"
end

array = (1..17).to_a

mutex = Mutex.new
stop_thread = false

client_on_open = Proc.new do
  puts 'This is Client'

  array.each_with_index do |i, index|
    client.send "#{i}: Ruby to Node"
    if (index + 1) % 8 == 0 # wait for 5 seconds every 8 times
      puts "Waiting for 5 seconds"
      sleep 5
    end
    if index == array.size - 1 # last element is sent
      sleep 5
      mutex.synchronize { stop_thread = true }
      puts "finish"
    end
  end
end

client.on :open, &client_on_open

client.on :unexpected_response do |res|
  puts "Unexpected response: #{res}"
end

client.on :close do |e|
  case e.code
  when 1000
    puts 'Closed normally'
  else
    puts "Closed with code #{e.code}"
  end
end

thread = Thread.new do
  loop do
    sleep 1
    if stop_thread
      puts "Thread stopped"
      break
    end
  end
end

thread.join
