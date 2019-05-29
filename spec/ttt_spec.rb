#spec/tictactoe_spec.rb

require './lib/tictactoe' #=> add this

RSpec.describe TicTacToe do
  describe "#winning_rows" do

    it "returns true if there is a winning row" do
      tic_tac_toe = TicTacToe.new
      board = [
        ["o","o"," "],
        [" ","x"," "],
        ["x","x","x"]
      ]
      expect(tic_tac_toe.winning_rows(board)).to eql(true)
    end

  end
end