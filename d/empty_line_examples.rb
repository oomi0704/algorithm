# 空行検出と改行処理の例

puts "=== 方法1: empty?メソッド ==="
puts "何か入力してください（空行で終了）:"
loop do
  line = gets
  if line.nil? || line.empty?
    puts "空行を検出しました"
    break
  end
  puts "入力: #{line.chomp}"
end

puts "\n=== 方法2: chompしてからempty? ==="
puts "何か入力してください（空行で終了）:"
loop do
  line = gets.chomp
  if line.empty?
    puts "空行を検出しました"
    break
  end
  puts "入力: #{line}"
end

puts "\n=== 方法3: 空白文字のみの行も検出 ==="
puts "何か入力してください（空行または空白のみで終了）:"
loop do
  line = gets.chomp
  if line.strip.empty?
    puts "空行または空白のみの行を検出しました"
    break
  end
  puts "入力: #{line}"
end

puts "\n=== 方法4: 複数行入力で空行を検出 ==="
puts "複数行入力してください（空行で終了）:"
lines = []
loop do
  line = gets
  if line.nil? || line.chomp.empty?
    puts "空行を検出、入力を終了します"
    break
  end
  lines << line.chomp
end

puts "入力された行数: #{lines.length}"
puts "内容:"
lines.each_with_index { |line, i| puts "#{i+1}: #{line}" }

puts "\n=== 方法5: 条件分岐で空行処理 ==="
puts "2行入力してください（空行の場合は改行を表示）:"
line1 = gets.chomp
line2 = gets.chomp

if line1.empty?
  puts "1行目は空行です"
else
  puts "1行目: #{line1}"
end

if line2.empty?
  puts "2行目は空行です"
else
  puts "2行目: #{line2}"
end 