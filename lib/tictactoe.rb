class TicTacToe

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


end 