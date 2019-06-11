
class TicTacToe

     #checks the input length for player moves

     def check_length?(input)
        
        if input.is_a?(Integer) && input >= 0 && input <= 8
        return true
        else
            return false
        end
    end
   
    #checks for a win
    def winner?(board)
        #vertical and horizonal equality checks
        j = 0
       for i in 0...3
        return true if (board[j]==board[j+1])&&(board[j+1]==board[j+2])

        j += 3
       end
       #verticals equality test
       j = 0
       for i in 0...3

        return true if (board[j]==board[j+3])&&(board[j+3]==board[j+6])
        j += 1
       end

       #diagonals equality test
     
        return true if (board[0]==board[4])&&(board[4]==board[8])
        return true if (board[2]==board[4])&&(board[4]==board[6])
     

      false
     end 

    #checks for a tie
        def tie?(moves)
            if moves.length == 9 
                @winner_type = "TIE"
                return true 
            end 
        end 

    #checks if game is over

    def game_over?(board,moves)
 
        winner?(board) || tie?(moves)

    end 

   #checks for winner

   def decide_winner_or_tie

        if @winner_type != "TIE"
            @board.declare_player(@turn_type)
        else  
            @board.declare_tie
        end 
    end 
   



end 
