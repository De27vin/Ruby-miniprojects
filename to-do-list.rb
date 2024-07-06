tasks = ["test-task", "tast-task2", "test-task3"]

class String
    def green          
        "\e[32m#{self}\e[0m" 
    end
    def red
        "\e[31m#{self}\e[0m"
    end
    def blue
        "\e[34m#{self}\e[0m"
    end
    def magenta
        "\e[35m#{self}\e[0m"
    end
end

loop do
    puts "1: View all tasks".magenta
    puts "2: Create a new task".green
    puts "3: Delete a task".red
    puts "4: EXIT".blue

    numberChosen = gets.chomp.to_i

    case numberChosen
    when 1
        puts "\nAll tasks:"
        tasks.each_with_index{ |task,index| 
            puts "Key: #{index}, Task: #{task}"
        }
        puts ""
    when 2
        puts "\nType task you want to add:"
        taskToAdd = gets.chomp
        tasks << taskToAdd
        puts ""
    when 3
        puts "\nChose task to delete by key:"
        tasks.each_with_index{ |task,index| 
            puts "Key: #{index}, Task: #{task}"    
        }

        taskToDel = gets.chomp.to_i

        if taskToDel >= 0 && taskToDel < tasks.length
            tasks.delete_at(taskToDel)
            puts "Task #{taskToDel} has been deleted"
        else
            puts "Please chose a valid task key"
        end

        puts ""
    when 4
        break
    end

end