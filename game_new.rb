require 'bundler'
require 'sinatra/base'
require './lib/RPS_new'
Bundler.require

#create a server side application that runs on our localhost
#contains the routes
#the last expression must give the name of the erb, just as a function only
#returns the same expression

module Play
  class RPS_App < Sinatra::Application

    get '/throw/:type' do
      @start = RPS.new(params[:type])
      @winner = @start.choose_winner
      @computer_move = @start.computer_move
      erb :throw
    end

  end
end