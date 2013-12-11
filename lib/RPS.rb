class RPS
	attr_accessor :winner, :computer_move

	MOVE = [:rock, :paper, :scissors]
    WIN = {:paper => :rock, :scissors => :paper, :rock => :scissors}
    TIE = {:paper => :paper, :scissors=> :scissors, :rock => :rock}

	def initialize(player_move)
        @player_move =player_move.to_sym
        @computer_move = MOVE.sample
        @winner = shoot(player_move)
	end


	def shoot(player_move)
        if player_won?(@player_move,@computer_move)
            winner = "player"
        elsif computer_won?(@player_move,@computer_move)
            winner = "computer"
        else
            winner = "tie"
        end
        winner      
	end


    def player_won?(player_move, computer_move)
    	WIN[player_move] = computer_move ? true : false
    end

    def tie?(player_move, computer_move)
    	TIE[player_move] = computer_move ? true : false
    end

    def computer_won?(player_move, computer_move)
    	WIN[computer_move] = player_move ? true : false
    end


end