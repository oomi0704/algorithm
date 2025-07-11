# putsとprintの使い方と違い

puts "=== putsの特徴 ==="
puts "putsは自動的に改行を追加します"
puts "この行の後には改行があります"
puts "次の行です"

puts "\n=== printの特徴 ==="
print "printは改行を追加しません"
print "この行の後には改行がありません"
print "続けて出力されます"
puts  # 空のputsで改行を追加

puts "\n=== 改行の制御 ==="
puts "明示的に改行を制御する場合:"
print "改行なしで出力"
print " → "
puts "改行ありで終了"

puts "\n=== 文字列内での改行 ==="
puts "文字列内に\\nを入れると改行されます:\n改行されました"
print "printでも\\nは改行されます:\n改行されました"

puts "\n=== 複数の値を出力 ==="
name = "田中"
age = 25
puts "名前:", name, "年齢:", age
print "名前: ", name, " 年齢: ", age
puts  # 改行を追加

puts "\n=== 配列の出力 ==="
fruits = ["りんご", "バナナ", "オレンジ"]
puts "putsで配列を出力:"
puts fruits
print "printで配列を出力: "
print fruits
puts

puts "\n=== 数値の出力 ==="
number = 42
puts "数値: #{number}"
print "数値: #{number}"
puts

puts "\n=== 改行のベストプラクティス ==="
puts "1. 通常のテキスト出力には puts を使用"
puts "2. 改行したくない場合は print を使用"
puts "3. 空の puts で改行を追加"
puts "4. 文字列内の \\n で明示的に改行"

puts "\n=== 実用的な例 ==="
puts "ユーザー情報入力フォーム:"
print "名前: "
name = gets.chomp
print "年齢: "
age = gets.chomp
puts "入力完了！"
puts "名前: #{name}, 年齢: #{age}" 