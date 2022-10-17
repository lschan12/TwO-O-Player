require "./player"
require "./question"
require "./turn"

class Game

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def run_game 
    while (@player1.lives > 0 && @player2.lives > 0)
      if (@player1.lives > 0 && @player2.lives > 0) 
        turn = Turn.new(@player1)
        turn.run_turn
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        puts "----- NEW TURN -----"
      end
      if (@player1.lives > 0 && @player2.lives > 0) 
        turn = Turn.new(@player2)
        turn.run_turn
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        puts "----- NEW TURN -----"
      end
    end
    @player1.lives == 0 ? (puts "Player 2 wins with a score of #{@player2.lives}/3") : (puts "Player 1 wins with a score of #{@player1.lives}/3")
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end

game = Game.new
game.run_game

