require 'rack'

Rack::Handler::WEBrick.run proc {|env| [200, {"Content-Type" => "text/html"}, [env.inspect]]}, :Port => 9292
#my_rack_proc = proc { |env| [200, {"Content-Type" => "text/plain"}, ["Hello"]] }
#Rack::Handler::WEBrick.run my_rack_proc
