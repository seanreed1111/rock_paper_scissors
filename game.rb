require 'bundler'
require 'sinatra/base'
Bundler.require

#create a server side application that runs on our localhost
#contains the routes
#the last expression must give the name of the erb, just as a function only
#returns the same expression

module Game
  class RPS_App < Sinatra::Application

    get '/throw/:type' do
      @computer_move = ["rock", "paper", "scissors"].sample
      @player_move =params[:type]
      win_array = [ ["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]
      @outcome = "You won! Redo?" if win_array.include? [@player_move, @computer_move]
      @outcome = "You lose. Want to play again?" if win_array.include? [@computer_move, @player_move]
      @outcome = "Draw." if @player_move == @computer_move
      erb :throw
    end

  end
end