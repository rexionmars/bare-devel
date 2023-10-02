#!/usr/bin/env crystal

require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello, World! The time is #{Time.local}"
end

address = server.bind_tcp 6969
puts "Listening on http://#{address}"
server.listen
