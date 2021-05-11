require_relative '../lib/player'

describe Player do
  let(:player_test_1) { Player.new('player_test_1') }
  let(:player_test_2) { Player.new('player_test_2') }
  describe '#name' do
    it "returns the player's name" do
      expect(player_test_1.name).to eql('player_test_1')
    end
    it "returns the player's name" do
      expect(player_test_2.name).to eql('player_test_2')
    end
  end
  describe '#token' do
    it 'returns X for Player 1' do
      expect(player_test_1.token).to eql('X')
    end
    it 'returns O for Player 2' do
      expect(player_test_2.token).to eql('O')
    end
  end
  describe '#moves_made' do
    it "Returns empty list when the player had made no move" do
      expect(player_test_1.moves_made).to eql([])
    end
    it 'Returns the list of moves when a move is added' do
      player_test_1.make_move(1)
      expect(player_test_1.moves_made).to eql([1])
    end
    it 'Returns the list of moves with multiple moves' do
      player_test_1.make_move(1)
      player_test_1.make_move(7)
      player_test_1.make_move(9)
      expect(player_test_1.moves_made).to eql([1, 7, 9])
    end
  end
  describe '#make_move' do
    it 'Add move to the move list' do
      expect(player_test_1.make_move(1)).to eql([1])
    end
    it 'Add a move to the list of moves when the list is not empty' do
      player_test_1.make_move(4)
      expect(player_test_1.make_move(7)).to eql([4, 7])
    end
  end
end