# This is a working, barebones Sinatra app for reference.
# There is no framework architected yet, that will be in sinatra-sandbox-2

require 'rack'
require 'pry'
require 'sinatra'

# In order to run the Sinatra app below, go to bash and type the following:
# $ ruby sinatra.app.1.rb
# This will start the actual Sinatra app, you should see something like this
# in bash:

# [2019-09-16 11:47:04] INFO  WEBrick 1.4.2
# [2019-09-16 11:47:04] INFO  ruby 2.5.1 (2018-03-29) [x86_64-linux-gnu]
# == Sinatra (v2.0.6) has taken the stage on 4567 for development with backup from WEBrick
# [2019-09-16 11:47:04] INFO  WEBrick::HTTPServer#start: pid=22920 port=4567

# Go to a web browser on the virtual machine (or base env) and type the following:
# http://localhost:4567/
# ...since the port specified above is "4567"

# Type Ctrl+c in bash to shutdown the server.

# This is the first route, it is spinning up Sinatra's #get [request] method.
# Sinatra is built on Rack, so there is no need for a Rack ".ru" file anywhere.
# To see this route, navigate to:
# http://localhost:4567/
get '/' do     
  "The Sinatra app is up and running!"
end

# This is the second route, and it too is it is spinning up Sinatra's #get [request] method.
# To see this route, navigate to:
# http://localhost:4567/somewhere
get '/somewhere' do     
  "This is the response to a get request at the following URL: http://localhost:4567/somewhere"
end

# This is the third route, and it too is it is spinning up Sinatra's #get [request] method.
# To see this route in a browser, navigate to:
# http://localhost:4567/indexpage
get '/indexpage' do
  # This is spinning up Sinatra's #File method and the #File's #read method to access a file:     
  File.read("index.html")
end

# This is the fourth route, it is spinning up Sinatra's #post [request] method.
post "/" do
  "Goodbye everybody!"
end 
