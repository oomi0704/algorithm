# 1行目: N と K を取得
line1 = gets.split
n = line1[0].to_i
k = line1[1].to_i

# 続く N 行: 配列 A の要素を取得
a = []
n.times do
  a << gets.to_i
end

# 配列 A に含まれる K の数を数える
count = a.count(k)
puts count
