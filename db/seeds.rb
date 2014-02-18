File.new('words', "r").each do |entry|
  Word.create(word: entry.chomp, sorted: entry.chomp.split('').sort.join(''))
end
