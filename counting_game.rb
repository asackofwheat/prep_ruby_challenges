def counting_game(players, count)
  player_tracker = 1
  count_tracker = 1
  direction = 1
  while count_tracker <= count
    if player_tracker == 11
      player_tracker = 1
    elsif player_tracker == 0
      player_tracker = 10
    end
    puts "Player #{player_tracker} says #{count_tracker}"
    if count_tracker % 7 == 0 && count_tracker % 11 == 0
      if direction == 1
        direction = -1
      elsif direction == -1
        direction = 1
      end
      player_tracker = player_tracker + (direction * 2)
    elsif count_tracker % 7 == 0
      if direction == 1
        direction = -1
      elsif direction == -1
        direction = 1
      end
      player_tracker = player_tracker + direction
    elsif count_tracker % 11 == 0
      player_tracker = player_tracker + (direction * 2)
    else
      player_tracker = player_tracker + direction
    end
    count_tracker += 1
  end
end

counting_game(10, 100)