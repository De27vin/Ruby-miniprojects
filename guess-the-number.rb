numberToGuess = rand(1..20)
userGuess = 0

class String 
    def green          
        "\e[32m#{self}\e[0m" 
    end
    def red
        "\e[31m#{self}\e[0m"
    end
    def orange
        "\e[38;5;214m#{self}\e[0m"
    end
    def yellow
        "\e[33m#{self}\e[0m"
    end
end

while numberToGuess != userGuess
    puts "Type a number between 1 and 20"
    userGuess = gets.chomp.to_i

    numberTooHigh = userGuess - numberToGuess
    if numberToGuess < userGuess
        case numberTooHigh
        when 3
            puts "Your guess was too high".red
        when 2
            puts "Your guess was too high".orange
        when 1
            puts "Your guess was too high".yellow
        else
            puts "Your guess was too high"
        end
    end 

    numberTooLow = numberToGuess - userGuess
    if numberToGuess > userGuess
        case numberTooLow
        when 3
            puts "Your guess was too low".red
        when 2
            puts "Your guess was too low".orange
        when 1
            puts "Your guess was too low".yellow
        else
            puts "Your guess was too low"
        end
    end 
end
puts "Correct, the number was #{numberToGuess}".green
