def number_of_permutations(sequence)
  numerator(sequence) / denominator(sequence)
end

def numerator(sequence)
   factorial sequence.length
end

def denominator(sequence)
  repeats = Array.new
  denominator = 1
  sequence.chars.uniq.each { |c| repeats << sequence.count(c)}
  repeats.each {|x| denominator *= factorial x}
  denominator
end

def factorial(n)
  return 1 unless n > 0
  n * factorial(n - 1)
end


puts number_of_permutations "abracadabra"
