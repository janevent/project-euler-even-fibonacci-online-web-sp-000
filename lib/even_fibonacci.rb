]']'# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  array = [1, 2]
  
  i = 0
  while i < limit
    i = array[-2] + array[-1]
    array << i
    
    #fibo = (1..limit).inject([0,1]){ |f, n| f << f[-2] + f[-1] }
  end
  puts array
  
  newArray = array.select do |item| 
    item.even?  
  end
  
  newArray.reduce(0) {|total, item| total + item }
  
end