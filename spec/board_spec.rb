#spec/tic_tac_toe_spec.rb
#bin/main.rb
require 'spec_helper'
require './lib/player.rb'
require './lib/board.rb'

describe Board do
    describe 'get_move' do
        it 'token is in the right position' do
            board = Board.new
            player = Player.new ('test_player')
            board.get_move(player.token, 7, player)
            expect(board.board_state).to eq('
        +---+---+---+
        | 1 | 2 | 3 |
        +---+---+---+
        | 4 | 5 | 6 |
        +---+---+---+
        | X | 8 | 9 |
        +---+---+---+')
        end
    end
end
