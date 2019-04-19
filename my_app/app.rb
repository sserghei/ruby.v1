require 'sinatra'
require 'rest-client'
require 'pry-byebug'

class App < Sinatra::Base
  post '/' do
    # binding.pry

    # request = env + params
  end

  get '/' do
    content_type :json
    # env => The environment of the request.
    # ENV => The environment of the system.

    # params

    request = RestClient.get "http://ott.watch/api/channel_now.json"
    channel_list = JSON.parse(request.body)
    
    # [200, { 'Content-Type' => 'application/json' }, channel_list.to_json]
    # status 404
    channel_list.to_json
  end

  get '/env' do
    content_type :json

    env.to_json
  end
end
