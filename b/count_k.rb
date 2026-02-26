# 1行目: "N K" を split で分割して N と K を取得
input_line = gets.split
n = input_line[0].to_i
k = input_line[1].to_i
  
  a = []
  n.times do 
      a << gets.to_i
  end 
  
  count = a.count(k)
puts count