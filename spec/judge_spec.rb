#spec/judge_spec.rb

require 'spec_helper'
require './lib/player.rb'
require './lib/judge.rb'

describe Judge do
    describe '#valid_name' do
        it 'returns a name' do
            judge = Judge.new
            expect(judge.valid_name('John')).to eql('John')
        end
        it 'returns false when no name given' do
            judge = Judge.new
            expect(judge.valid_name('')).to eql(false)
        end
    end
    describe '#valid_move(move, array)' do
            it 'returns a false when the number entered is in the array and already attributed' do
            judge = Judge.new
            expect(judge.valid_move(1, 1..9)).to eql(false)
            end
    end
end