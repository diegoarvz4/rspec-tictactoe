class TicTacToe

    def winning_rows(board)
        for i in 0..board.length-1
            return true if board[i].uniq.size <= 1 && board[i][0] != " "
        end
        false
    end 



end 