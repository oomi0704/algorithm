# getsメソッドのクラスと詳細について

puts "=== getsメソッドの詳細 ==="

# getsメソッドのクラスを確認
puts "gets.class: #{gets.class}"
puts "gets.class.superclass: #{gets.class.superclass}"

# 実際にgetsを呼び出して確認
puts "\n何か入力してください（getsの動作確認）:"
input = gets
puts "入力された値のクラス: #{input.class}"
puts "入力された値: #{input.inspect}"

# Kernelモジュールのメソッドとしての確認
puts "\n=== Kernelモジュールのメソッド ==="
puts "Kernel.private_instance_methods.include?(:gets): #{Kernel.private_instance_methods.include?(:gets)}"
puts "Kernel.methods.include?(:gets): #{Kernel.methods.include?(:gets)}"

# Objectクラスのメソッドとしての確認
puts "\n=== Objectクラスのメソッド ==="
puts "Object.private_instance_methods.include?(:gets): #{Object.private_instance_methods.include?(:gets)}"

# メソッドの詳細情報
puts "\n=== メソッドの詳細 ==="
begin
  method_info = method(:gets)
  puts "メソッドの所有者: #{method_info.owner}"
  puts "メソッドの名前: #{method_info.name}"
rescue => e
  puts "メソッド情報の取得でエラー: #{e.message}"
end

# 他の入力メソッドとの比較
puts "\n=== 他の入力メソッド ==="
puts "Kernel.private_instance_methods.grep(/get/):"
puts Kernel.private_instance_methods.grep(/get/).sort

# STDINとの関係
puts "\n=== STDINとの関係 ==="
puts "STDIN.class: #{STDIN.class}"
puts "STDIN.gets と Kernel#gets の関係:"
puts "STDIN.gets は明示的にSTDINから読み込み"
puts "Kernel#gets は暗黙的にSTDINから読み込み" 