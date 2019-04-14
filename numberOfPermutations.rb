def number_of_permutations(sequence)
  numerator = sequence.length
  denominator=[]
  sequence.chars.uniq.each { |c| denominator << sequence.count(c)}
  [numerator, denominator]
end

def factorial(n)
  return 1 unless n > 0
  n * factorial(n - 1)
end

def calculate(arr)
  total = factorial arr[0]
  arr[1].each { |x| total /= factorial x}
  total
end

puts calculate number_of_permutations "mississippi"
