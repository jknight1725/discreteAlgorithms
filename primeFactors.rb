puts "Enter a number:"
n=gets.to_i
def primeFactors(n)
  factors = []
  2.upto(n) do|i| 
    while(n%i==0) do 
      factors.push(i) 
      n /= i 
    end  
  end
  return factors
end
puts primeFactors(n)
