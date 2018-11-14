require 'sinatra/base'
#require 'shotgun'
# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
class Battle < Sinatra::Base
	get '/' do
		'Testing infraestructure working'
	end
	run! if app_file == $0
end