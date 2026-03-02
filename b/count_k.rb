# テストケースを渡す場合: ここに1行ずつ配列で設定（本番では nil）
# テストケースを渡すときは配列を指定、本番（標準入力）なら nil
#INPUT_LINES = nil
INPUT_LINES = ["5 4", "1", "2", "3", "4", "5"]

@input_index = 0
def read_line
  if INPUT_LINES
    line = INPUT_LINES[@input_index]
    @input_index += 1
    line ? line.to_s + "\n" : nil
  else
    gets
  end
end

# 1行目: "N K" を split で分割して N と K を取得
input_line = read_line.split
n = input_line[0].to_i
k = input_line[1].to_i

a = []
n.times do
  a << read_line.to_i
end

count = a.count(k)
puts count
