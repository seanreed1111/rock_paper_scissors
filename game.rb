require 'bundler'
require 'sinatra/base'
#require './lib/game'
Bundler.require

#create a server side application that runs on our localhost
#contains the routes
#the last expression must give the name of the erb, just as a function only
#returns the same expression

module Game
	class RPS_App < Sinatra::Application
		get '/throw' do

			erb :throw
		end
	end
end