def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    elsif katz_deli.size > 0
        string = "The line is currently:"
        katz_deli.each_with_index do |name, index|
            string << (" #{index+1}. #{name}")
        end
        puts string
    end
end

def take_a_number(katz_deli, name)
     katz_deli << name
     number = katz_deli.size
    puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(katz_deli) 
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        current = katz_deli.first
        katz_deli.shift
        puts "Currently serving #{current}."
    end
end