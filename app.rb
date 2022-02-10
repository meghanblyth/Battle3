require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do  
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    "player_1_name" << session[:player_1_name].inspect
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect to('/play')
    redirect to('/attack')
  end

  get '/play' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:play)
  end

  get '/attack' do 
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:attack)
  end 

  run! if app_file == $0
end