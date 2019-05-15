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

def won?(board)
  player_indices = []
  board.each do |index|
    if index == "X"
      player_indices.push(index)
    end
  end
  
  WIN_COMBINATIONS.detect do |winning_combo|
    winning_combo == player_indices
    return winning_combo
  end

  if winning_combo == player_indices
    return player_indices
  else
    return false
  end 
end
