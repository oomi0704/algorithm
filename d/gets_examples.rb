# getsメソッドの使い方例

puts "=== 基本的な使い方 ==="
puts "名前を入力してください:"
name = gets
puts "こんにちは、#{name}さん！"

puts "\n=== chompメソッドとの組み合わせ ==="
puts "年齢を入力してください:"
age = gets.chomp  # 改行文字を削除
puts "あなたは#{age}歳ですね。"

puts "\n=== 数値として読み込み ==="
puts "数字を入力してください:"
number = gets.chomp.to_i
puts "入力された数字の2倍は#{number * 2}です"

puts "\n=== 複数行の入力 ==="
puts "複数行のテキストを入力してください（終了するにはCtrl+D）:"
lines = []
while line = gets
  lines << line.chomp
end
puts "入力された行数: #{lines.length}"
puts "内容:"
lines.each_with_index { |line, i| puts "#{i+1}: #{line}" }

puts "\n=== 条件付きで読み込み ==="
puts "y/nで答えてください:"
answer = gets.chomp.downcase
if answer == 'y' || answer == 'yes'
  puts "はいが選択されました"
elsif answer == 'n' || answer == 'no'
  puts "いいえが選択されました"
else
  puts "無効な入力です"
end 