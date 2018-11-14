require 'sinatra/base'
#require 'shotgun'
# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
class Battle < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end
	post '/names' do # Receiving values from the form that is in the index and then sending to :play that is NOW a get method below
		session[:player_1_name] = params[:player_1_name]
		session[:player_2_name] = params[:player_2_name]
		redirect '/play'
	end

	get '/play' do
	  @player_1_name = session[:player_1_name]
	  @player_2_name = session[:player_2_name]
	  erb :play
	end
	run! if app_file == $0
end