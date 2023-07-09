require 'socket'

ip_address, port = ARGV
socket = TCPSocket.new(ip_address, port)
puts "Connected to listener at #{ip_address}:#{port}"
loop do
  print "You: "
  message = $stdin.gets.chomp
  socket.puts message
  response = socket.gets.chomp
  puts "Listener: #{response}"
end
socket.close
