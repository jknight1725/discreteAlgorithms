def numberOfPermutations sequence
  numerator = sequence.length
  denominator=[]
  sequence.chars.uniq.each { |c| denominator << sequence.count(c)}
  [numerator, denominator]
end

def factorial(n)
  return 1 unless n > 0
  n * factorial(n - 1)
end

def calculate arr
  numerator = factorial arr[0]
  denominator = 1
  arr[1].each { |x| denominator *= factorial x}
  numerator / denominator
end

puts calculate numberOfPermutations "mississippi"
