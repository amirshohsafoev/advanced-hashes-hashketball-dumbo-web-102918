require 'pry'
def game_hash
   {
 :home => {
   :team_name => "Brooklyn Nets",
   :colors => ["Black", "White"],
   :players => [
     {
      :player_name => "Alan Anderson",
      :number => "0",
      :shoe => "16",
      :points => "22",
      :rebounds => "12",
      :assists => "12",
      :steals => "3",
      :blocks => "1",
      :slam_dunks => "1"
   }, {
      :player_name => "Reggie Evans",
      :number => "30",
      :shoe => "14",
      :points => "12",
      :rebounds => "12",
      :assists => "12",
      :steals => "12",
      :blocks => "12",
      :slam_dunks => "7"
   }, {
      :player_name => "Brook Lopez",
      :number => "11",
      :shoe => "17",
      :points => "17",
      :rebounds => "19",
      :assists => "10",
      :steals => "3",
      :blocks => "1",
      :slam_dunks => "15"
   }, {
     :player_name => "Mason Plumlee",
      :number => "1",
      :shoe => "19",
      :points => "26",
      :rebounds => "12",
      :assists => "6",
      :steals => "3",
      :blocks => "8",
      :slam_dunks => "5"
   }, {
     :player_name => "Jason Terry",
      :number => "31",
      :shoe => "15",
      :points => "19",
      :rebounds => "2",
      :assists => "2",
      :steals => "4",
      :blocks => "11",
      :slam_dunks => "1"
    }
   ]
 },

 :away => {
   :team_name => "Charlotte Hornets",
   :colors => ["Turquoise", "Purple"],
   :players => [
     {
       :player_name => "Jeff Adrien",
      :number => "4",
      :shoe => "18",
      :points => "10",
      :rebounds => "1",
      :assists => "1",
      :steals => "2",
      :blocks => "7",
      :slam_dunks => "2"
     }, {
       :player_name => "Bismak Biyombo",
      :number => "0",
      :shoe => "16",
      :points => "12",
      :rebounds => "4",
      :assists => "7",
      :steals => "7",
      :blocks => "15",
      :slam_dunks => "10"
     }, {
       :player_name => "DeSagna Diop",
      :number => "2",
      :shoe => "14",
      :points => "24",
      :rebounds => "12",
      :assists => "12",
      :steals => "4",
      :blocks => "5",
      :slam_dunks => "5"
     }, {
       :player_name => "Ben Gordon",
      :number => "8",
      :shoe => "15",
      :points => "33",
      :rebounds => "3",
      :assists => "2",
      :steals => "1",
      :blocks => "1",
      :slam_dunks => "0"
     }, {
       :player_name => "Brendan Haywood",
      :number => "33",
      :shoe => "15",
      :points => "6",
      :rebounds => "12",
      :assists => "12",
      :steals => "22",
      :blocks => "5",
      :slam_dunks => "12"
     }
    ]
  }
}
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end
#(good_practices)
'def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute|
      attribute.fetch(:player_name)
       #binding.pry
end
end
end'

def players
  #binding.pry
  home_players = game_hash[:home][:players]
  #binding.pry
  away_players = game_hash[:away][:players]
#binding.pry
  total_players = home_players + away_players
  total_players
end
#players

def num_points_scored(name)
  find_player = players.find {|player| player.fetch(:player_name) == name }
  #binding.pry
  point = find_player.fetch(:points)
  #binding.pry
  point.to_i
end

def shoe_size(name)
  find_player = players.find {|player| player.fetch(:player_name) == name }
  size = find_player.fetch(:shoe)
  size.to_i
end

def team_inf 
  home_team = game_hash.values_at(:home)
#binding.pry
  away_team = game_hash.values_at(:away)
#binding.pry
  total_team_inf = home_team + away_team
  total_team_inf
binding.pry
end 
#team_inf
