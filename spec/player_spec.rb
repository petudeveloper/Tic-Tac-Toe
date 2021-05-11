#spec/tic_tac_toe_spec.rb
#bin/main.rb
require 'spec_helper'
require './lib/player.rb'

describe Player do
    describe 'make_move' do
        it 'A move is added' do
            test_player = Player.new ('test_player')
            expect(test_player.make_move(1)).to eql([1])
        end
        it 'Moves made is store in an Array' do
            test_player = Player.new ('test_player')
            test_player.make_move(1)
            expect(test_player.moves_made.kind_of?(Array)).to equal(true)
        end
        it 'First Player added has ´O´ as a token' do
            test_player = Player.new ('test_player')
            expect(test_player.token).to eq('O')
        end
        it 'Second Player added has ´X´ as a token' do
            test_player_1 = Player.new ('test_player_1')
            test_player_2 = Player.new ('test_player_2')
            expect(test_player_2.token).to eq('O')
        end
    end 
end