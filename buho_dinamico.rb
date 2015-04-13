require "sinatra"
require "sinatra/reloader"

require 'sinatra'

get '/' do
  erb :index
end

get '/que_hacemos' do
  erb :que_hacemos
end

get '/quienes_somos' do
  erb :quienes_somos
end

get '/contacto' do
  erb :contacto
end