def test
    n = gets.chomp
    (n.size+2).times do 
    print  "+"
    end

    puts  "\n+#{n}+"

    (n.size+2).times do 
        print  "+"
    end
end

test