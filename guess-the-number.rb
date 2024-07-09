numberToGuess = rand(1..20)
userGuess = 0

class String 
    def green          
        "\e[32m#{self}\e[0m" 
    end
end

while numberToGuess != userGuess
    puts "Type a number between 1 and 20"
    userGuess = gets.chomp.to_i

    if numberToGuess < userGuess
        puts "Your guess was too high"
        end 
    if numberToGuess > userGuess
        puts "Your guess was too low"
    end
end
puts "Correct, the number was #{numberToGuess}".green
