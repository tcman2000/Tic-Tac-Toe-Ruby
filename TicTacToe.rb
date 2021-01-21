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


class TicTacToe
  
end

#Method for displaying the game board
def display_board(board)
    #For loop that prints the columns of the array
    for i in 0..2 do
        puts "-------"
        print "|"
        #Nested for loop that prints each row of the array
        for j in 0..2 do
            print board[i][j].to_s + "|"
        end
        puts ""
    end
    puts "-------"
    puts ""
end

#Prints a welcome message
puts "Welcome to Tic Tac Toe!"

#Randomly selects the player or computer to go first
first_player = rand(1..2)

if first_player == 1
    puts "Player 1 goes first"
else
    puts "Player 2 goes first"
end

#Displays game board with numbered squares
puts "This is the game board, each number corresponds to the specific square."
numbered_board = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
display_board(numbered_board)

play_again = true
#While loop for playing multiple times
while play_again
    #until loop for game rounds
    game_over = false
    until game_over
    
    end

    #Ask user if they'd like to play again
    print "Enter 'y' if you'd like to play again: "
    response = gets.chomp
    if response != 'y'
        play_again = false
    end
end
