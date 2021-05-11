# frozen_string_literal: true

# rubocop: disable Style/ClassVars
class Player
  attr_reader :name, :token, :moves_made

  @@instances = 0

  def initialize(name)
    nil if @@instances > 1

    @moves_made = []
    @name = name
    @token = @@instances.zero? ? 'X' : 'O'
    @@instances += 1
    @@instances %= 2
  end

  def make_move(move)
    @moves_made << move
    @moves_made
  end
end
# rubocop: enable Style/ClassVars
