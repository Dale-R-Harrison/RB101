
def block_word?(word)
  blocks = {
  'B' => 'O',
  'C' => 'P',
  'X' => 'K',
  'D' => 'Q',
  'N' => 'A',
  'G' => 'T',
  'R' => 'E',
  'F' => 'S',
  'J' => 'W',
  'H' => 'U',
  'V' => 'I',
  'L' => 'Y',
  'Z' => 'M'}

  block_word = true
  word.upcase.chars.each do |char|
    if blocks.has_key?(char)
      blocks.delete(char)
    elsif blocks.has_value?(char)
      blocks.delete(blocks.key(char))
    else
      block_word = false
    end
  end
  block_word
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true