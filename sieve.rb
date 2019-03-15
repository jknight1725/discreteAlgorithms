puts "Enter a number\nAll prime numbers below your number will be displayed\n"
n=gets.to_i
a=(1..n).to_a
b=a
x=a.length
2.upto(x) do |i|
  a.each do |j|
    if j%i==0 && j!=i then b.delete(j) end
  end
  a=b
end
print a
