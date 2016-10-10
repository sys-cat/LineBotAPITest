require 'sinatra'
require_relative 'Logic/line'

get '/' do
  'Hello Line Messaging API'
end

get '/message' do
  "オウム返ししますよ"
end