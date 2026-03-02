
INPUT_LINES = ["1", "1", "2", "3", "4", "5"]

# 入力行を取得
if INPUT_LINES
  lines = INPUT_LINES.map { |s| s.to_s }
  input_line = lines[0].chomp.split
  n = input_line[0].to_i
  k = input_line[1].to_i
  a = []
  n.times do |i|
    a << lines[i + 1].to_i
  end
else
  # 本番: 標準入力から1行ずつ読む
  input_line = gets.split
  n = input_line[0].to_i
  k = input_line[1].to_i
  a = []
  n.times do
    a << gets.to_i
  end
end