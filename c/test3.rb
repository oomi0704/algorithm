def test3
    price = gets.to_i
    count = 0

  while price > 0
    if price >= 500
        price = price - 500
        count = count + 1
    
    elsif price >= 100
        price = price - 100
        count = count + 1

    elsif price >= 50
        price = price - 50
        count = count + 1

    elsif price >= 10
          price = price - 10
          count = count + 1

    elsif price >= 5
          price = price - 5
          count = count + 1

    
    elsif price >= 1
          price = price - 1
          count = count + 1
    end
  end  
  puts count
end

test3
