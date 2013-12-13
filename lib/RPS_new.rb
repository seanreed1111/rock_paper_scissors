require 'bundler'
Bundler.require


module Game 
  class RPS_App < Sinatra::Application

  		get '/' do
  			@image = funke.jpeg
  			erb :throw
  		end

	attr_accessor :winner, :computer_move, :player_move

	MOVE = [:rock, :paper, :scissors]
    WIN = {:paper => :rock, :scissors => :paper, :rock => :scissors}
    TIE = {:paper => :paper, :scissors=> :scissors, :rock => :rock}

	def initialize(player_move)
		@player_move = player_move.to_sym

	end

	def choose_winner_at_random
		computer_move = MOVE.sample
		["Player", "Computer"].sample
	end

	def choose_winner
		@computer_move = MOVE.sample
		puts "computer_move = #{computer_move}"
		puts "player_move = #{player_move}"
		
		if TIE[computer_move] == player_move
			"It's a TIE!" 
		elsif WIN[player_move] == computer_move
			"You Win!!" 
		elsif WIN[computer_move] == player_move
			"You Lose!!" 
		end
	
	def collection_images
     array_image = ["funke.jpeg", "michael.jpeg", "gob.jpeg", "buster.jpeg"]

	end

end