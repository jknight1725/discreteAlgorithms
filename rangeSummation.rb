def summation(b,e,args={})
  #will sum from begin to end or end to begin
  if e<b then b,e = e,b end 
  
  #if no increment selected then inc by one
  args[:i] ||= 1
  #array of elements to sum
  elements = (b..e).step(args[:i]).to_a 
  #Formula for summation of range
  sum = elements.size * (elements.first+elements.last) / 2 

  #extended output if v param given 
  verbose = elements * " + " + " = #{sum}"
  if args[:i]==1 && args[:v]
    puts "The sum of every number from #{b} to #{e} is #{sum}\n" + verbose
  elsif args[:v]
    puts "The sum of every #{args[:i]} numbers from #{b} to #{e} is #{sum}\n" + verbose
  end
  
  return sum
end

#demo / test cases
puts summation 10,1
print"\n"
puts summation(1,10)
print"\n"
summation(1,10,i: 3,v: true)
print"\n"
puts summation(7.3,14.7,i: 0.25, v: false)
print"\n"
summation(-7.5,10,i: 0.5, v: true)

