def test2
    n,x,y = gets.split(" ").map(&:to_i)
    
    (1..n).each do |i|
        if i % x == 0 && i % y == 0
            puts "AB"
        
        elsif i % x == 0
            puts "A"
        
        elsif i % y == 0
            puts "B"
        
        else 
            puts "N"
        end
    end
end

test2

テスト