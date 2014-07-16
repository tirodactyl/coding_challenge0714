def add_padding(str, len)
  (" " * (len - str.length)) + str
end

def print_matrix(matrix)
  pad = matrix.last.last.to_s.length
  
  matrix.map do |row|
    puts row.map { |el| add_padding(el.to_s, pad) }.join("  ")
  end
end