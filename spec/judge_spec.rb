# spec/judge_spec.rb

require 'spec_helper'
require './lib/player'
require './lib/judge'

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
    it 'returns a false when the number entered is in the array of moves' do
      judge = Judge.new
      expect(judge.valid_move(1, 1..9)).to eql(false)
    end
    it 'returns moves when the number is not already attributed' do
      judge = Judge.new
      expect(judge.valid_move(1, 2..9)).to eql(1)
    end
    it 'returns false when the number is not in the range of valid moves' do
      judge = Judge.new
      expect(judge.valid_move(10, 2..9)).to eql(false)
    end
  end
  describe '#check_winner' do
    it 'returns a true when the array of moves is a winner_scenario' do
      judge = Judge.new
      expect(judge.check_winner([3, 5, 6, 7])).to eql(true)
    end
    it 'returns a false when the array of moves is not a winner_scenario' do
      judge = Judge.new
      expect(judge.check_winner([4, 5, 7])).to eql(false)
    end
  end
end
