#!/usr/bin/env ruby
#require 'rubygems'
require 'rack'

class HelloRack
    def call(env)
        [
            200,
            {"Content-Type" => "text/html"},
            ["Hello Rack!"]
#		env.inspect
        ]
    end
end
builder = Rack::Builder.new do
  use Rack::CommonLogger
 # run HelloRack.new
 map '/version' do
    run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["infinity 0.1"]] }
  end
map '/' do
#    run Proc.new {|env| [200, {"Content-Type" => "text/html"}, [env.inspect]] }
    run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["1","2"]] }
  end

end

Rack::Handler::WEBrick.run(builder, :Port => 3001)
