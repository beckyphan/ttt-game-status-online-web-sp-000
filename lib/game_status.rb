# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

#  0 | 1 | 2
# -----------
#  3 | 4 | 5
# -----------
#  6 | 7 | 8

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

player_indices = []

def player_pos(board)
  board.each do |index|
    if index == "X"
      player_indices.push(index)
    end
  end
  return player_indices
end

def won?(board)
  WIN_COMBINATIONS.each do |winning_combo|
    if winning_combo == player_pos(board)
      return player_pos(board)
    else
      false
    end
  end
end
