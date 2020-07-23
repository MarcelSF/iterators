# ACRONYM
# an abbreviation formed from the initial letters of other words

# Laugh out Loud = LOL
# You only live once = YOLO


def acronymize(sentence)
  sentence.split(" ").map do |word|
    word[0].upcase
  end.join

  # split sentence into array
  # get first letter and capitalize it
  # join all letters and return
  # should return empty string if sentence == ''
  # we have to ignore the letter casing.
end

# puts acronymize('Laugh out loud') == 'LOL'
# puts acronymize('') == ''
# puts acronymize('you only live once') == 'YOLO'
# puts acronymize('WHAT THE FORK') == 'WTF'
