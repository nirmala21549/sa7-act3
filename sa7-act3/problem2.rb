def play_game
    points_room = [5, 10, 15]
    total_points = 0
    puts "Welcome to the Adventure Game!"
    puts "You have #{total_points} points."

  loop do
    puts "Choose a room (1-3) to enter or 'exit' to end the game:"
    print ">"
    choice = gets.chomp.downcase
    
    case choice
    when '1', '2', '3'
        room_number = choice.to_i - 1
        points = points_room[room_number]
        total_points = total_points + points
        puts "\nYou entered Room #{room_number + 1} and earned #{points} points."
        puts "You now have a total of #{total_points} points.\n\n"
    when 'exit'
      puts "\nGame over! You collected a total of #{total_points} points."
      break
    else
      puts "Invalid choice. Please enter a room number (1-3) or 'exit'."
    end
  end
end

play_game
