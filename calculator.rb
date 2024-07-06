puts "Welcom to my calculator, please enter a number, a + - * / and another number"

puts "Number 1:"
a = gets.chomp.to_f
puts "Operation:"
operator = gets.chomp
puts "Number 2:"
b = gets.chomp.to_f


def addition(a, b)
    return a + b
end

def substraction(a, b)
    return a - b
end

def multiplication(a, b)
    return a * b
end

def diversion(a, b)
    return a / b
end

case operator
when "+"
    puts addition(a, b)
when "-"
    puts substraction(a, b)
when "*"
    puts multiplication(a, b)
when "/"
    puts diversion(a, b)
else
    puts "Please enter one of operations + - * /"
end
