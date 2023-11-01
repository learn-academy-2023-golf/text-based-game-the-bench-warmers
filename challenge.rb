# Text-based Game Challenge

class BowlingGame
    attr_accessor :player_name, :score
  
    def initialize(player_name)
      @player_name = player_name
      @score = 0
    end
  
    def roll(pins)
      @score += pins
    end
  end
  
 class BowlingGameSimulation
    def initialize
      @players = {
        'Gus' => BowlingGame.new('Gus'),
        'Clark' => BowlingGame.new('Clark'),
        'Richie' => BowlingGame.new('Richie')
      }
    end
  
    def play_game
      puts "In a small Beverly Hills town where bowling was more than just a pastime, there was a billionaire with a passion for strikes and spares—Bruce Bayne, a man whose bank account was as hefty as his bowling ball. One fateful day, he stumbled upon three nerds—Clark, Gus, and Richie—who were more accustomed to coding than throwing balls down lanes. These guys were the epitome of gutter balls, but they shared an unbreakable bond forged through their shared love for bowling, meeting every weekend until they were rudely kicked out by the indomitable Facebook MOM group, whose combined bowling skills were sharper than their online memes. You play as Gus first, teaching Clark and Richie to throw Strikes. You throw the bowling ball is to the Strike." 
      puts "Welcome to the Beverly Hills Bowling Hall!"
      puts "You will be playing as Gus, teaching Clark and Richie to throw Strikes."
      puts "Let's get started!"
  
      
        current_player = @players.values.shift
        puts "\nIt's #{current_player.player_name}'s turn."
        puts "Enter the number of pins knocked down: "
        pins_knockdown = gets.chomp.to_i
        if pins_knockdown == 10
            puts "#{current_player.player_name} got a Strike!"
        else 
            puts "#{current_player.player_name}  is better than that!"
        end

# got stuck here switching different player
        current_player = @players.values.shift
        puts "\nIt's #{current_player.player_name}'s turn."
        puts "Enter the number of pins knocked down: "
        pins_knockdown = gets.chomp.to_i
        if pins_knockdown == 10
            puts "#{current_player.player_name} got a Strike!"
        else 
            puts "#{current_player.player_name}  is better than that!"
        end
        
      

    
  
      puts "\nGame over! Here are the final scores: "
      @players.each do |name, player|
        puts "#{name}: #{player.score} points"
      end
    end
  end
  
  game_simulation = BowlingGameSimulation.new
  game_simulation.play_game






  # class BowlingGameSimulation
  #   def initialize
  #     @players = {
  #       'Gus' => BowlingGame.new('Gus'),
  #       'Clark' => BowlingGame.new('Clark'),
  #       'Richie' => BowlingGame.new('Richie')
  #     }
  #   end

  # class BowlingGameSimulation
    #   attr_accessor :players
    
    #   def initialize
    #     @players = {}
    #   end
    
    #   def add_player(player_name)
    #     @players[player_name] = BowlingGame.new(player_name)
    #   end