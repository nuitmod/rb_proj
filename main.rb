require 'rubygems'
require 'sinatra'
require 'json'
#require 'sinatra/cors'
#require 'sinatra/cross_origin'
#require 'sinatra/reloader' if development?

before do
   #content_type :json
   headers 'Access-Control-Allow-Origin' => '*',
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']
end

#get '/' do 'hello root' end
get '/' do redirect '/index' end
get '/hello/:name' do |n| "Hello #{n}" end
get '/yoox' do redirect 'https://yoox.com' end


#get '/' do send_file 'public/index.html' end
get '/index' do File.read(File.join('public', 'index.html')) end
#get '/data' do send_file 'public/data.html' end
get '/data' do File.read(File.join('public', 'data.html')) end
get '/api'  do
  return "data rb".to_json
end
  #{'dat': "data rb"} end #request.host end
