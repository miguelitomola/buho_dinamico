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

post '/contacto' do
  # options = {
  #   :to => '<animacionbd@gmail.com>',
  #   :from => '<'+params[:email]+'>',
  #   :subject => '<'+params[:us_name]+' ha escrito un mensaje desde elbuhodinamico.com>',
  #   :body => '<'+params[:message]+'>',
  #   :via => :smtp,
  #   :via_options => {
  #     :address => 'smtp.sendgrid.net',
  #     :port => '587',
  #     :authentication => :plain,
  #     :user_name => ENV['SENDGRID_USERNAME'],
  #     :password => ENV['SENDGRID_PASSWORD'],
  #     :domain => 'heroku.com',
  #     :enable_starttls_auto => true
  #   }
  # }

  # Pony.mail(options)
  
  @flash_msg = "Tu mensaje ha sido enviado correctamente. En breve nos pondremos en contacto contigo."
  erb :contacto

end
