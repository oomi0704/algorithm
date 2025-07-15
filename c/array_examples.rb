# 配列の受け取り方の例

puts "=== 方法1: スペース区切りの文字列を配列に変換 ==="
puts "数字をスペース区切りで入力してください（例: 1 2 3 4 5）:"
input = gets.chomp
numbers = input.split.map(&:to_i)
puts "受け取った配列: #{numbers}"
puts "配列の型: #{numbers.class}"

puts "\n=== 方法2: カンマ区切りの文字列を配列に変換 ==="
puts "数字をカンマ区切りで入力してください（例: 1,2,3,4,5）:"
input2 = gets.chomp
numbers2 = input2.split(',').map(&:to_i)
puts "受け取った配列: #{numbers2}"

puts "\n=== 方法3: 改行区切りで複数行入力 ==="
puts "数字を1行ずつ入力してください（終了は空行）:"
lines = []
while line = gets.chomp
  break if line.empty?
  lines << line.to_i
end
puts "受け取った配列: #{lines}"

puts "\n=== 方法4: 固定個数の入力 ==="
puts "5個の数字を入力してください:"
fixed_array = []
5.times do |i|
  print "#{i+1}番目: "
  fixed_array << gets.to_i
end
puts "受け取った配列: #{fixed_array}"

puts "\n=== 方法5: 文字列の配列 ==="
puts "文字列をスペース区切りで入力してください:"
words = gets.chomp.split
puts "受け取った配列: #{words}"

puts "\n=== 方法6: 空の配列を初期化 ==="
empty_array = []
puts "空の配列を作成: #{empty_array}"

puts "\n=== 方法7: 配列の要素を個別に受け取り ==="
puts "3つの値を入力してください:"
a, b, c = gets.chomp.split.map(&:to_i)
puts "a=#{a}, b=#{b}, c=#{c}"
puts "配列として: [#{a}, #{b}, #{c}]" 