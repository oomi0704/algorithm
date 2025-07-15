def number
    n = gets.to_i  
    (1..n).each do |i|
      puts i
    end
end

def number2
    n = gets.to_i
    n.times do |i| 
        puts i + 1
    end
end


def fizzbuzz()
    n = gets.to_i
    (1..n).each do |i|
      if i % 5 == 0 && i % 3 == 0
          puts "Fizz Buzz"
   
      elsif i % 3 == 0
          puts "Fizz"

      elsif i % 5 == 0
          puts "Buzz"

      else 
          puts i
      end
    end
end

   
fizzbuzz()