class RubyCliGemProject::Player
    #https://stackoverflow.com/questions/3772864/how-do-i-remove-leading-whitespace-chars-from-ruby-heredoc

    attr_accessor :name, :number, :position,
                  :player_height, :player_age,
                  :player_weight, :player_college,
                  :player_salary, :player_url, :attributes, :player_object,
                  :player_headshot_small, :player_headshot_big,
                    :free_throw_percentage, :games_played, :field_goal_percentage,
                    :three_point_field_goal_percentage, :minutes_per_game,
                    :rebounds_per_game, :assists_per_game,
                    :blocks_per_game,:Steals_per_game,
                    :turnovers_per_game, :points_per_game,
                   :tag_field_goal_percentage, :tag_three_point_field_goals_made_attempted_per_game,
                    :tag_three_point_field_goal_percentage,
                    :tag_free_throws_made_attempted_per_game,
                    :tag_free_throw_percentage, :tag_rebounds_per_game,
                    :tag_assists_per_game, :tag_blocks_per_game,
                    :tag_Steals_per_game, :tag_personal_fouls_per_game,
                    :tag_turn_overs_per_game, :tag_points_per_game,
                    :tag_games_played, :tag_minutes_per_game, :tag_field_goals_made_attempted_per_game
    @@all = []



#                   :personal fouls_per_game,
# :Minutes Per Game,:Field Goals Made-Attempted Per Game,
# :3-Point Field Goals Made-Attempted Per Game,
# :Free Throws Made-Attempted Per Game,

    def  initialize #(name)  #= "NEEDS_A_NAME", position, number = "numeral")
        @@all << self
        @name = name
        @number = number
        @position = position
       #@points_per_game = points_per_game
       #@games_played = games_played
       #@@nyk_players = nyk_players
    end
    
    #should return all players
    def self.all
        @@all
    end

    #should clear all players from the @@all []
    def self.clear
        all.clear
    end

        #should return message to test that .class methods.
    def self.today
        "yeah buddy!"
    end

end
