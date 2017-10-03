def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number
  puts "Left is " + left.to_s

  write = left/1000000
  puts "For the millions, write is " + write.to_s
  left  = left - write*1000000
  puts "For the millioans, left is now " + left.to_s

  if write > 0
    millions  = englishNumber write
    numString = numString + millions + ' million'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000
  puts "For the thousands, write is " + write.to_s
  left  = left - write*1000
  puts "For the thousands, left is now " + left.to_s

  if write > 0
    thousands  = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100
  puts "For the hundreds, write is " + write.to_s
  left  = left - write*100
  puts "For the hundreds, left is now " + left.to_s

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10
  puts "For the tens, write is now " + write.to_s
  left  = left - write*10
  puts "For the tens, left is  now " + left.to_s

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end
  numString
end
puts englishNumber(3356541)
