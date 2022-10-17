class Turn

  attr_accessor :player
  
  def initialize(player)
    @player = player
  end

  def run_turn
    question = Question.new
    
    puts "Player #{@player.id}: #{question.question}"
    answer = gets.chomp.to_i
  
    if answer == question.answer
      puts "Player #{@player.id}: You got it!"
    else
      puts "Player #{@player.id}: Incorrect"
      @player.lose_life
    end
  end

end