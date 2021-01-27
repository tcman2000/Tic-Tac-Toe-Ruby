=begin
    To do list:
        welcome player: done
        randomly select player: done
        display game board with numbered squares: done

        loop game until tie or win
            first_player selects a spot
                display an error message if spot is taken
                else mark the spot
            other_player selects a spot
                display an error message if spot is taken
                else mark the spot
        repeat

        display score
        ask if they want to repeat game: done
            if yes, repeat the above loop
            else, terminate
        repeat
=end

# class for containing each specific player
class Player
    # constructor for player
    def initialize(name)
      @name = name
      @wins = 0
    end
  
    # returns name of player
    def display_name
      @name
    end
  
    def increment_wins
      @wins += 1
    end
  
    def return_wins
      @wins
    end
  end
  
  # class for the game board
  class Board
    def initialize
      @numbered_board = ['X', 1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  
    def display_board
      # For loop that prints the columns of the array
      puts '---------'
      for i in 0..8 do
        print '|'
        print "#{@numbered_board[i]}|"
        if ((i + 1) % 3).zero?
          puts ''
          puts '---------'
        end
      end
      puts ''
    end
  
    def mark_square(square, player)
      if !@numbered_board[square].is_i?
        puts "This square has already been taken"
        false
      else
        if player == 1
          @numbered_board[square] = 'X'
        else
          @numbered_board[square] = 'O'
        end
        true
      end
    end
  end
  
  # Prints a welcome message
  puts 'Welcome to Tic Tac Toe!'
  
  # Prompt players to enter their names
  puts 'Please enter the name of Player 1: '
  player_one = Player.new(gets.chomp)
  puts 'Please enter the name of Player 2: '
  player_two = Player.new(gets.chomp)
  
  
  # Randomly selects the player or computer to go first
  first_player = rand(1..2)
  
  if first_player == 1
    puts "#{player_one.display_name} goes first."
  else
    puts "#{player_two.display_name} goes first."
  end
  
  # Displays game board with numbered squares
  puts 'This is the game board, each number corresponds to the specific square.'
  game_board = Board.new
  game_board.display_board
  puts 'Take turns marking a square by entering the square number when prompted.'
  puts "For example: '#{player_one.display_name}'s turn: 1'"
  
  
  play_again = true
  # While loop for playing multiple times
  while play_again
    # until loop for game rounds
    game_over = false
    until game_over
      print "#{player_one.display_name}'s turn: "
      game_board.mark_square(gets.chomp.to_i, 1)
      game_board.display_board
      game_over = true
    end
  
      #Ask user if they'd like to play again
      print "Enter 'y' if you'd like to play again: "
      response = gets.chomp
      if response != 'y'
          play_again = false
      end
  end
  