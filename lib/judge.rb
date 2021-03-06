require_relative 'board'
require_relative 'player'

class Judge
  def initialize; end

  def valid_name(name)
    return name unless name.empty?

    false
  end

  def valid_move(move, array)
    if (1..9).include? move
      if array.include? move
        false

      else
        move

      end
    else

      false
    end
  end

  private

  def compare_custom(arr_game, arr_win)
    counter = 0
    arr_win.each do |i|
      counter += 1 if arr_game.include?(i)
    end
    counter == 3
  end

  public

  def check_winner(arr)
    winner_scenarios = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    winner_scenarios.each do |scenarios|
      return true if compare_custom(arr, scenarios)
    end
    false
  end
end
