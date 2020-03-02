def display_board(board)
  puts "------------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "---------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "---------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif position_taken?(board, index)
    return false
  end
  return true
end

def position_taken?(board, index)
  v = board[index]
  if v == ' ' || v == '' || v == nil
    return false
  end
  return true
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def turn
  puts "Please enter 1-9:"
end
