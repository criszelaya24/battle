require 'sinatra/base'
#require 'shotgun'
# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
class Battle < Sinatra::Base
	get '/' do
		'Testing infraestructure working'
		erb :index
	end
	post '/names' do
		@player_1_name = params[:player_1_name]
		@player_2_name = params[:player_2_name]
		erb :play
	end
	run! if app_file == $0
end