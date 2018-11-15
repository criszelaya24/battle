require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
#require 'shotgun'
# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
class Battle < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end
	post '/names' do # Receiving values from the form that is in the index and then sending to :play that is NOW a get method below
		# $player_1 = Player.new(params[:player_1_name])
		# $player_2 = Player.new(params[:player_2_name])
		player_1 = Player.new(params[:player_1_name])
		player_2 = Player.new(params[:player_2_name])
		$game = Game.new(player_1, player_2)
		redirect '/play'
	end

	get '/play' do
		# @player_1 = $player_1
		# @player_2 = $player_2
		@game = $game
		erb :play
	end

	get '/attack' do
		# @player_1 = $player_1
		# @player_2 = $player_2
		# Game.new.attack(@player_2)
		@game = $game
		@game.attack(@game.player_2)
		#@game.switch_turns
		erb :attack
	end

	post '/switch-turns' do
		$game.switch_turns
		redirect('/play')
	end
	run! if app_file == $0
end