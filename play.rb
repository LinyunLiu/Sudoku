# Name: Linyun Liu
# Title: A Sudoku Game in Ruby

require_relative 'game'

def print(rows)
  puts "\e[31m#{"     0     1     2     3     4     5     6     7     8"}\e[0m"
  puts "  "+"-"*55
  (0..8).each { |i|
    @row = ""
    @row += "\e[31m#{i.to_s}\e[0m" + " |"
    (0..8).each { |j|
      if (rows[i].get_numbers)[j].to_i != 0
        @row += "  " + "\e[32m#{(rows[i].get_numbers)[j].to_s}\e[0m" + "  |"
      else
        @row += "  " + "\e[37m#{(rows[i].get_numbers)[j].to_s}\e[0m" + "  |"
      end
    }
    puts @row
    puts "  " + "-" * 55
  }
end

def preset(game, seed)
  @tmp = seed.split('')
  (0..8).each { |i|
    (0..8).each { |j|
      game.check_out(j, i, @tmp[j].to_i)
    }
    @tmp.shift(9)
  }
end

seed = "123456789789123456456789123312840967697312845845697312231574698968231574574968230"
game = Game.new
preset(game,seed)
puts "\t\t\s\s\s====== Welcome to Sudoku Game ====== \n\n"
while true
  if game.get_count < 81
    print(game.get_rows)
    while true
      puts 'Your Next Answer("X, Y, Number"): '
      # inputs integer needs to be parsed successfully
      begin
        input = gets.chomp.strip
        input = input.split(',')
        @cor_x = input[0].strip.to_i
        @cor_y = input[1].strip.to_i
        @num = input[2].strip.to_i
      rescue Exception
        puts "Invalid Inputs"
      else
        # an input value cannot be bigger than 9 or small than 1
        if @cor_x >=0 && @cor_x <=8 && @cor_y >=0 && @cor_y <=8 && @num >=1 && @num <=9
          if game.check_out(@cor_x, @cor_y, @num)
            break
          else
            puts "Invalid Inputs"
          end
        else
          puts 'Invalid Inputs'
        end
      end
    end
  else
    print(game.get_rows)
    puts "Congratulation, You have Won!"
    break
  end
end



