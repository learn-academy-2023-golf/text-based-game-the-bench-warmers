# Text-based Game Challenge

class BowlingGame
    attr_accessor :player_name, :score

    #  Constructor for initializing a player with a name and initial score of 0
    def initialize(player_name)
      @player_name = player_name
      @score = 0
    end
  
    # Method for simulating a roll, updating the player's score based on knocked down pins
    def roll(pins)
      @score += pins
    end
  end
  
  
  class BowlingGameSimulation
    # Constant array of player names
    PLAYER_NAMES = ['Gus', 'Clark', 'Richie'].freeze
  
    # Constructor for initializing the game simulation with players
    def initialize
      # Create a hash of players using their names and instances of BowlingGame
      @players = Hash[PLAYER_NAMES.map { |name| [name, BowlingGame.new(name)] }]
    end
  
  #   Method for simulating the entire bowling game
  # def play_game
    def play_game
      puts "In a small Beverly Hills town where bowling was more than just a pastime, there was a billionaire with a passion for strikes and spares—Bruce Bayne, a man whose bank account was as hefty as his bowling ball. One fateful day, he stumbled upon three nerds—Clark, Gus, and Richie—who were more accustomed to coding than throwing balls down lanes. These guys were the epitome of gutter balls, but they shared an unbreakable bond forged through their shared love for bowling, meeting every weekend until they were rudely kicked out by the indomitable Facebook MOM group, whose combined bowling skills were sharper than their online memes. You play as Gus first, teaching Clark and Richie to throw Strikes. You throw the bowling ball is to the Strike." 
      puts "Welcome to the Beverly Hills Bowling Hall!"
      puts "You will be playing as Gus, teaching Clark and Richie to throw Strikes."
      puts "Let's get started!"
  
      turns = 3

      # Loop through each turn
      turns.times do
        # Loop through each player in the game
        @players.each do |name, player|
          puts "\nIt's #{player.player_name}'s turn."
          puts "Enter the number of pins knocked down: "
          # Get the number of pins knocked down from user input
          pins_knockdown = gets.chomp.to_i
  
          # Check if the player got a Strike or not
          if pins_knockdown == 10
            puts "#{player.player_name} got a Strike!"
          else
            puts "#{player.player_name} is better than that!"
          end
  
          # Update the player's score based on the roll
          player.roll(pins_knockdown)
        end
      end
  
      # Display the final scores at the end of the game
      puts "\nGame over! Here are the final scores: "
      @players.each { |name, player| puts "#{name}: #{player.score} points" }
    end
end
  
# Create an instance of BowlingGameSimulation and start the game simulation
  game_simulation = BowlingGameSimulation.new
  game_simulation.play_game
      
      
      
      
      
      
  # class BowlingGameSimulation
  #   def initialize
  #     @players = {
    #       'Gus' => BowlingGame.new('Gus'),
    #       'Clark' => BowlingGame.new('Clark'),
    #       'Richie' => BowlingGame.new('Richie')
    #     }
    #         current_player = @players.values.shift
    #         puts "\nIt's #{current_player.player_name}'s turn."
    #         puts "Enter the number of pins knocked down: "
    #         pins_knockdown = gets.chomp.to_i
    #         if pins_knockdown == 10
    #             puts "#{current_player.player_name} got a Strike!"
    #         else 
    #             puts "#{current_player.player_name}  is better than that!"
    #         end
    
    # # got stuck here switching different player
    #         current_player = @players.values.shift
    #         puts "\nIt's #{current_player.player_name}'s turn."
    #         puts "Enter the number of pins knocked down: "
    #         pins_knockdown = gets.chomp.to_i
    #         if pins_knockdown == 10
    #             puts "#{current_player.player_name} got a Strike!"
    #         else 
    #             puts "#{current_player.player_name}  is better than that!"
    #         end
            
          
    
        
      
#     puts "\nGame over! Here are the final scores: "
#     @players.each do |name, player|
#       puts "#{name}: #{player.score} points"
#     end
#   end
# end

# game_simulation = BowlingGameSimulation.new
# game_simulation.play_game
  #   end

  # class BowlingGameSimulation
    #   attr_accessor :players
    
    #   def initialize
    #     @players = {}
    #   end
    
    #   def add_player(player_name)
    #     @players[player_name] = BowlingGame.new(player_name)
    #   end