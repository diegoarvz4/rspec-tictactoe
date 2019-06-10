
require "./lib/tictactoe.rb"
require "./lib/match.rb"
require "./lib/board.rb"

require "./lib/turn_management.rb"
RSpec.describe Board  do
  
  describe "#board is full?" do 
    it "checks if the board is full when it's not full" do 
      board = Board.new 
      expect(board.is_full?).to eql(false)
    end 
  end 

  describe "#board is full?" do 
    it "checks if the board is full when it's actually full. " do 
      board = Board.new 
      # A hard-coded real tie example was made
      # because the instance variable @dimensions
      # it is onty writable through set_cell method
      board.set_cell(0,"X")
      board.set_cell(1,"O")
      board.set_cell(2,"X")
      board.set_cell(3,"O")
      board.set_cell(4,"X")
      board.set_cell(5,"O")
      board.set_cell(6,"O")
      board.set_cell(7,"X")
      board.set_cell(8,"O")
      expect(board.is_full?).to eql(true)
    end 
  end 

end

RSpec.describe Match  do
  
  let(:match_test){

      board = Board.new 
      player1 = Player.new("X")
      player2 = Player.new("O") 
      match = Match.new(board, player1, player2)
      return match 
  }


  describe "#heck_horizontal_winning" do 
    it "checks if there's an identical horizontal row" do 
      board = ["X","X","X",
               "O",4,"O",
               6,"O",8]
      expect(match_test.check_horizontal_winning(board)).to eql(true)
    end 
  end 

  describe "#check_vertical_winning" do 
    it "checks if there's an identical vertical col" do 
      board = ["X","O","X",
               "X","O","O",
               6,"O",8]
      expect(match_test.check_vertical_winning(board)).to eql(true)
    end 
  end 

  describe "#check_diagonal_winning" do 
    it "checks if there's an identical diagonal col/row" do 
      board = ["X",1,"O",
               "X","O","X",
               "O","X",8]
      expect(match_test.check_diagonal_winning(board)).to eql(true)
    end 
  end 

  describe "#set_next_turn" do 
    it "checks if it return the other token" do  
      expect(match_test.set_next_turn("X")).to eql("O")
    end 
  end 

  describe "#player_turn" do 
    it "returns the player object of which turn is it" do  
      #We cannot acces the player instance variables "publicly"
      #That's why create new instances. But for test cases it works as wished 
      player1 = Player.new("X")
      player2 = Player.new("O")
      expect(match_test.player_turn(player1,player2,"X")).to eql(player1)
    end 
  end 

  describe "#game_over?" do 
    it "check if the game is over" do
      #game_over? is a private method, so we made an axuiliary method
      #to acces it.   
      expect(match_test.test_game_over?).to eql(false)
    end 
  end 

end

