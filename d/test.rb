def rengi
    n = gets.to_i 
    puts n-10
end


def number
    s,a,t = gets.split(" ").map(&:to_f)
    puts (t / s * 100).to_i
end

number