require 'sinatra'
require 'sinatra/reloader'
require 'pony'
require 'pry'


get '/?' do 
  erb :index
end

get '/que_hacemos/?' do
  erb :que_hacemos
end

get '/quienes_somos/?' do
  erb :quienes_somos
end

get '/contacto/?' do
  erb :contacto
end

post '/contacto/?' do
  options = {
    :to => 'mikimontero@hotmail.com',
    :from => params[:email],
    :subject => params[:us_name],
    :body => params[:message],
    :via => :smtp,
    :via_options => {
      :adress => 'smtp.sendgrid.net',
      :port => 587,
      :domain => 'elbuhodinamico.com',
      :user_name => ENV['SENDGRID_USERNAME'],
      :password => ENV['SENDGRID_PASSWORD'],
      :authentication => :plain,
      :enable_starttls_auto => true
    }
  }

  Pony.mail(options)

  redirect '/contacto'
end
