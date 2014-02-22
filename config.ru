#run  proc {|env| [200, {"Content-Type" => "text/html"}, [env.inspect]]}
require './my_app'
run MyApp.new
#Rack::Server.new( { :app => MyApp.new, :server => 'webrick', :Port => 9876} ).start
