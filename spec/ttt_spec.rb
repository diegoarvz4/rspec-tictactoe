
require "./lib/tictactoe.rb"

RSpec.describe TicTacToe  do
  
 describe "#winner?" do

  it "checks for winner by horizontal equality" do

    tictactoe = TicTacToe.new
    expect(tictactoe.winner?(["X","X","X","O",4,5,"X","O","O"])).to eql(true)

  end

  it "checks for winner by vertical equality" do

    tictactoe = TicTacToe.new
    expect(tictactoe.winner?(["X","O","O","X",4,5,"X",7,"O"])).to eql(true)

  end

  it "checks for winner by diagonal equality" do

    tictactoe = TicTacToe.new
    expect(tictactoe.winner?(["O","X","O","X","O",5,"X",7,"O"])).to eql(true)

  end

 end

    #tests the check_length method
    describe "#check_length?" do
     
      it "checks for valid player input=>true or false " do
        tictactoe = TicTacToe.new
        expect(tictactoe.check_length?("hello")).to eql(false)
      end
     
    end

    #tests game_over? method

     describe "#tie?" do
        
       it "checks game over with a tie" do
            tictactoe = TicTacToe.new
            board = ["X","O","O",
                    "O","X","X",
                    "O","X","O"]
            moves_tie = [4,5,3,2,0,8,6,7,1]
            
            expect(tictactoe.game_over?(board,moves_tie)).to eql(true)
         end

        
       end
   

end