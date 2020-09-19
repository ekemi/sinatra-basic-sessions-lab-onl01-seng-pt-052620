require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"
end

get '/' do

  erb :index
end

post '/checkout' do
item = params[:item]
@session = session

 @session[:item] = item
 @session
end
