numbers = [1,2,3,4]

sum = 0
numbers.each do |n|
    sum += n
end


a = []
numbers.delete_if do |n|
   n.odd?
end

sum = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10:n
    sum += sum_value
end
p sum