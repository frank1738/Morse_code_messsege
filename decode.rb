def decode_char(char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
    '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code[char].capitalize
end

def decode_word(word)
  decoded_word = ''
  word.split.each do |letter|
    decoded = decode_char(letter)
    decoded_word += decoded
  end
  decoded_word
end

def decode(messege)
  words = messege.split('  ')
  messege = []
  words.each do |phrase|
    decoded_phrase = decode_word(phrase)
    messege.push(decoded_phrase)
  end
  p messege.join(' ')
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
