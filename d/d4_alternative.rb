# 2つの整数の差と積を計算（コメントアウト中）
# A, B = gets.split(' ').map(&:to_i)
# D = A - B
# P = A * B
# puts "#{D} #{P}"


# 数値計算
n = 0 
a,b,c = gets.split('').map(&:to_i)
n = n + a
n = n * b
n = n % c
puts n 