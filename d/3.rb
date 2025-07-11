def first_part
    input_line1 = gets.chomp
    input_line2 = gets.chomp
    puts input_line1
    puts input_line2
  end
  
  def second_part
    s_1_s_2 = gets
    s_1_s_2.split(" ").each do |s|
      puts s
    end
  end
  
  def third_part
    s, t = gets.split(' ')
    puts s
    puts t
  end
  
  # メイン処理
  third_part()