# 2つの整数の差と積を計算
#A, B = gets.split(' ').map(&:to_i)
#P = A * B
#puts "#{D} #{P}"


# 数値計算: (n + a) * b % c
#n = 0 
#a, b, c = gets.split(' ').map(&:to_i)
#n = n + a
#n = n * b
#n = n % c
#puts n

def forth
a,b,c = gets.split(' ').map(&:to_i)
  a - b + c
end

puts forth
