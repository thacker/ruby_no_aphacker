require 'rubygems'
require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @nome = params[:nome]
  erb :index
end
