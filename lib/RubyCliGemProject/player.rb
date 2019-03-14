class RubyCliGemProject::Player
    #https://stackoverflow.com/questions/3772864/how-do-i-remove-leading-whitespace-chars-from-ruby-heredoc

    attr_accessor :name, :number, :position,
                  :player_height, :player_age,
                  :player_weight, :player_college,
                  :player_salary, :player_url, :attributes, :player_object,
                  :player_headshot_small, :player_headshot_big,
                    :free_throw_percentage, :games_played, :field_goal_percentage,
                    :three_point_field_goal_percentage,
                    :rebounds_per_game, :Assists_per_game,
                    :blocks_per_game,:Steals_per_game,
                    :turnovers_per_game, :points_per_game,
                   :tag_field_goal_percentage, :tag_three_point_field_goals_made_attempted_per_game,
                    :tag_three_point_field_goal_percentage,
                    :tag_free_throws_made_attempted_per_game,
                    :tag_free_throw_percentage, :tag_rebounds_per_game,
                    :tag_assists_per_game, :tag_blocks_per_game,
                    :tag_Steals_per_game, :tag_personal_fouls_per_game,
                    :tag_turn_overs_per_game, :tag_points_per_game
                    #:tag_games_played, :tag_minutes_per_game, :tag_field_goals_made_attempted_per_game,



#                   :personal fouls_per_game,
# :Minutes Per Game,:Field Goals Made-Attempted Per Game,
# :3-Point Field Goals Made-Attempted Per Game,
# :Free Throws Made-Attempted Per Game,

    @@all = []
    #@@nyk_players = []
    def  initialize #(name)  #= "NEEDS_A_NAME", position, number = "numeral")
        @@all << self
        @name = name
        @number = number
        @position = position
        #@@nyk_players = nyk_players
    end
    
    def self.all
        #should return all players
        @@all
    end
    
    #      def save
    #     self.class.all << self
    #   end


#   def self.create(name)
#     player = new(name)
#     player.save unless @@all.include?(player.name)
#     player
#   end



      def self.clear
         all.clear
      end
    
    #  def self.position
    #      @position
    #  end


     def self.today
          "yeah buddy!"
     end

     def self.attributes
        self.name
        self.number
        self.player_age
     if self.player_college == nil
        puts "No College"
        self.player_height
     if self.player_salary == nil
        puts "No Salary"
     end
        self.player_url
        self.player_weight
        self.position
     end


        # def self.name
    #     @name = name
    # end

#def self.nyk_roster
    #scrape ESPN roster page then scrape individual player_ur pages to show more attributes.exit
    #    self.get_page
    # puts "Here are your New York Knickerbockers:"
        # puts "--------------------------------------------------------------"

        # *1. First_player:
        # Lu 'Buckets' Daley
        # Guard Goucher College
        # #24 5'9" - 180lbs
        # --------------------------------------------------------------
        # *2. Second_player:
        # Nikki 'she's a shooter' Daley
        # Guard Lasell College -
        # #10 5'5" - 130lbs
        # *1. First_player:
        # Lu 'Buckets' Daley
        # Guard Goucher College
        # #24 5'9" - 180lbs
        # --------------------------------------------------------------
        # *3. Third_player:
        # Sean 'No-games' Daley
        # Guard Baby College -
        # #2 1'1" - 7lbs
        # --------------------------------------------------------------
        # *4. fourth_player:
        # Elisa 'Lefty' Daley
        # Guard Baby College -
        # #5 1'1" - 6lbs
        #puts  <<~HEREDOC
        #HEREDOC
        

        # player_1 = self.new
        # player_1.name = "Lu 'Buckets' Daley"
        # player_1.number = "#43"
        # # player_1.position =  "point-guard"
        # # player_1.availability = true
        # # player_1.url = "www.LHDaley.com"
        
        # player_2 = self.new
        # player_2.name =   "Nikki 'she's a shooter' Daley"
        # #player_2.number = #"#10"
        # # player_2.position =  "shooting-guard"
        # # player_2.availability = true
        # # player_2.url = "www.NADaley.com"
        # [player_1, player_2]

 #   end

  
end
end
