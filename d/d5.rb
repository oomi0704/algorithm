def number
    s = gets.chomp
    if s == "paiza"
        puts "YES"
    else
        puts "NO"
    end
end


def number1
    n = gets.to_i
    if 1 <= n && n <= 100
        puts "YES"
    else
        puts "NO"
    end
end


def number2
 a,b,c = gets.split(' ').map(&:to_i)
 if a * b <= c
    puts "YES"
 else 
    puts "NO"
 end
end

def number2_2
    a,b,c = gets.split('').map do |i|
        i.to_i
    end
end


def number3
    n = gets.to_i
    if  n == 7
        puts "Yes"
    else
        puts "No"
    end
end


