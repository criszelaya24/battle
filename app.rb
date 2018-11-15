require 'sinatra/base'
require_relative 'lib/player.rb'
#require 'shotgun'
# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
class Battle < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end
	post '/names' do # Receiving values from the form that is in the index and then sending to :play that is NOW a get method below
		$player_1 = Player.new(params[:player_1_name])
		$player_2 = Player.new(params[:player_2_name])
		redirect '/play'
	end

	get '/play' do
		@player_1 = $player_1
		@player_2 = $player_2
		erb :play
	end

	get '/attack' do
		@player_1 = $player_1
		@player_2 = $player_2
		@player_1.attack(@player_2)
		erb :attack
	end
	run! if app_file == $0
end