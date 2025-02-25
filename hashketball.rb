# Write your code here!
require "pry"
 
 def game_hash()
 game_hash = {}
  game_hash[:home] = {team_name: "Brooklyn Nets",
    :colors => ["Black", "White"],
     :players =>[ 
     {:player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
        {:player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7},
        {:player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
        {:player_name =>"Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5},
        {:player_name =>"Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1}]
   }
   game_hash[:away] = {team_name: "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"], :players =>[
      {:player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2,},
        {:player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10},
        {:player_name =>"DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
        {:player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
        {:player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12}]
    }

game_hash
end


def num_points_scored(player_name)
  game_hash = game_hash()
  #binding.pry
   game_hash.each do |team_home_or_away, team_hash|
    team_hash.each do |key, value|
      if key == :players
        value.each do |player|
          if player[:player_name] == player_name
            return player[:points]
          end
        
     #binding.pry
        end
      end
   end
  end
 end

def shoe_size(player_name)
  game_hash = game_hash()
  #binding.pry
  game_hash.each do |team_home_or_away, team_hash|
    team_hash.each do |key, value|
      if key == :players
        value.each do |player|
          if player[:player_name] == player_name
            return player[:shoe]
          end
        
     #binding.pry
        end
      end
   end
  end
end

def team_colors(team_name2)
  game_hash = game_hash()
  #binding.pry
  game_hash.each do |team_home_or_away, team_hash|
      if team_hash[:team_name] == team_name2
           #binding.pry
          return team_hash[:colors]
      end 
  end
end

def team_names()
  team_array = []
  game_hash.each do |team_home_or_away, team_hash|
  team_array.push( team_hash[:team_name])
  #binding.pry
    
  end
  team_array
end

def player_numbers(team_name)
  i = 0
  player_array = []
  
  game_hash.each do |team_home_or_away, team_hash|
    if team_hash[:team_name] == team_name
   
   #return team_name
      team_hash.each do |key, value|
       
        if key == :players
         
         
           value.each do |player|
               player_array << player[:number]
           end
          end
      end
   end
 end
 return player_array
end

def player_stats (player_name)
  player_stats = {}
   game_hash.each do |team_home_or_away, team_hash|
    team_hash.each do |key, value|
      if key == :players
        value.each do |player|
          if player[:player_name] == player_name
           
            player_stats = {
              :assists => player[:assists],
              :blocks => player[:blocks],
              :number => player[:number],
              :points => player[:points],
              :rebounds => player[:rebounds],
              :shoe => player[:shoe],
              :slam_dunks => player[:slam_dunks],
              :steals => player[:steals]
            }
            end
          #binding.pry
       
     #binding.pry
        end
      end
   end
  end
  return player_stats
end

def big_shoe_rebounds()
  player_shoe = {}
  player_rebound = {}
  game_hash.each do |team_home_or_away, team_hash|
    team_hash.each do |key, value|
     
      if key == :players
        value.each do |player|
         # binding.pry
         player_shoe[player[:player_name]] = player[:shoe]
         player_rebound[player[:player_name]] = player[:rebounds]
         #, player[:rebounds]]
         #binding.pry
         end
         
         big_shoe = player_shoe.key(player_shoe.values.max)
          
          # binding.pry
         final_result = player_rebound[big_shoe]
         
         return final_result 
        
      end
    end
  end
 
end

  






