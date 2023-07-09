require 'socket'

port = ARGV[0]
server = TCPServer.new(port)
puts "Listening for connections on port #{port}..."
socket = server.accept
puts 'Caller connected!'
loop do
  message = socket.gets.chomp
  puts "Caller: #{message}"
  print "You: "
  response = $stdin.gets.chomp
  socket.puts response
end
socket.close
server.close
