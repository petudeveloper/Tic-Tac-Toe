require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  let(:player_test_1) { Player.new('player_test_1') }
  let(:player_test_2) { Player.new('player_test_2') }
  let(:test_board) { Board.new }
  let(:initial_board) do
    "        +---+---+---+
        | 1 | 2 | 3 |
        +---+---+---+
        | 4 | 5 | 6 |
        +---+---+---+
        | 7 | 8 | 9 |
        +---+---+---+"
  end
  describe '#board_state' do
    it 'Returns the initial board when no move has been made' do
      expect(test_board.board_state).to eql(initial_board)
    end
  end
  describe '#moves_made' do
    it 'Returns empty list when no moves has been made' do
      expect(test_board.moves_made).to eql([])
    end
    it 'Returns the list of moves when a moves are made' do
      test_board.get_move('X', 5, player_test_1)
      test_board.get_move('O', 6, player_test_2)
      test_board.get_move('X', 7, player_test_1)
      test_board.get_move('O', 8, player_test_2)
      expect(test_board.moves_made).to eql([5, 6, 7, 8])
    end
  end
  describe '#get_move' do
    it 'Add moves to the list of moves' do
      test_board.get_move('X', 7, player_test_1)
      test_board.get_move('O', 9, player_test_2)
      expect(test_board.moves_made).to eql([7, 9])
    end
  end
end
