# mapメソッドと&:to_iの使い方

puts "=== 基本的なmapの使い方 ==="
numbers = [1, 2, 3, 4, 5]
doubled = numbers.map { |n| n * 2 }
puts "元の配列: #{numbers}"
puts "2倍した配列: #{doubled}"

puts "\n=== 文字列配列を数値配列に変換 ==="
string_numbers = ["1", "2", "3", "4", "5"]
puts "文字列配列: #{string_numbers}"

# 方法1: ブロックを使った書き方
numeric_numbers1 = string_numbers.map { |str| str.to_i }
puts "数値配列（ブロック）: #{numeric_numbers1}"

# 方法2: &:to_iを使った書き方（短縮形）
numeric_numbers2 = string_numbers.map(&:to_i)
puts "数値配列（&:to_i）: #{numeric_numbers2}"

puts "\n=== &:to_iの詳細説明 ==="
puts "&:to_i は &:method_name の形式"
puts "これは { |item| item.method_name } の短縮形"

puts "\n=== 他のメソッドとの組み合わせ例 ==="
# 文字列を大文字に変換
words = ["hello", "world", "ruby"]
uppercase_words = words.map(&:upcase)
puts "元の文字列: #{words}"
puts "大文字に変換: #{uppercase_words}"

# 文字列の長さを取得
lengths = words.map(&:length)
puts "文字列の長さ: #{lengths}"

puts "\n=== gets.splitとの組み合わせ ==="
puts "空白区切りの文字列を入力してください（例: 1 2 3）:"
input = gets.chomp
puts "入力された文字列: #{input}"

# 文字列を空白で分割
string_array = input.split(' ')
puts "分割された文字列配列: #{string_array}"

# 文字列配列を数値配列に変換
number_array = string_array.map(&:to_i)
puts "数値配列: #{number_array}"

puts "\n=== 一行で書く場合 ==="
puts "空白区切りの数値を入力してください:"
numbers = gets.chomp.split(' ').map(&:to_i)
puts "結果: #{numbers}"

puts "\n=== 多重代入との組み合わせ ==="
puts "3つの数値を入力してください:"
a, b, c = gets.chomp.split(' ').map(&:to_i)
puts "a = #{a}, b = #{b}, c = #{c}"

puts "\n=== エラーが発生する場合 ==="
invalid_strings = ["1", "abc", "3", "def"]
puts "無効な文字列配列: #{invalid_strings}"

# to_iは無効な文字列に対して0を返す
safe_numbers = invalid_strings.map(&:to_i)
puts "安全に変換された数値: #{safe_numbers}"

puts "\n=== 比較: ブロック vs &:to_i ==="
test_array = ["10", "20", "30"]

# ブロックを使った書き方
result1 = test_array.map { |str| str.to_i }
puts "ブロック: #{result1}"

# &:to_iを使った書き方
result2 = test_array.map(&:to_i)
puts "&:to_i: #{result2}"

puts "結果は同じ: #{result1 == result2}" 