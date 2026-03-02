n = gets.to_i
a = []
n.times do
  a << gets.split.map(&:to_i)
end

puts a.flatten.sum-35
