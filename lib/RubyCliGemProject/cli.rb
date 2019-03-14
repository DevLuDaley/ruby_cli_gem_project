#MVC #our controller
#responsible for business logic/user interactions


class RubyCliGemProject::CLI

  def call
        puts ""
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        display_roster
        puts ""
        puts "---------------------------------------------------------------------------------------------".colorize(:blue)
        main_menu
        puts ""
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        goodbye
        puts ""
        puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^".colorize(:red)
        puts ""
  end

  def display_roster
        puts "                                         " + "Here are Your ".colorize(:light_blue)
        puts ""
        puts "                                            " + "New York ".colorize(:light_blue)
        puts ""
        puts <<-'EOF'
        puts ""
                    _    _                                     __     __              
                    | |  | |                    /\              \ \   / /              
                    | |__| | ___ _ __ ___      /  \   _ __ ___   \ \_/ /__  _   _ _ __ 
                    |  __  |/ _ \ '__/ _ \    / /\ \ | '__/ _ \   \   / _ \| | | | '__|
                    | |  | |  __/ | |  __/   / ____ \| | |  __/    | | (_) | |_| | |   
                    |_|  |_|\___|_|  \___|  /_/    \_\_|  \___|    |_|\___/ \__,_|_|   
                                                                                            
    EOF
        puts <<-'EOF'
        "   
                            _   _                __     __        _    
                            | \ | |               \ \   / /       | |   
                            |  \| | _____      __  \ \_/ /__  _ __| | __
                            | . ` |/ _ \ \ /\ / /   \   / _ \| '__| |/ /
                            | |\  |  __/\ V  V /     | | (_) | |  |   < 
                            |_| \_|\___| \_/\_/      |_|\___/|_|  |_|\_\
                                                                        
    EOF
    puts ""
        puts <<-'EOF'
                        _        _  ___   _ _____ _____ _  __ _____        _    
                    /\| |/\    | |/ / \ | |_   _/ ____| |/ // ____|    /\| |/\ 
                    \ ` ' /    | ' /|  \| | | || |    | ' /| (___      \ ` ' / 
                    |_     _|   |  < | . ` | | || |    |  <  \___ \    |_     _|
                    / , . \    | . \| |\  |_| |_ |____| . \ ____) |    / , . \ 
                    \/|_|\/    |_|\_\_| \_|_____\_____|_|\_\_____/     \/|_|\/ 
                                                                                
                                                             
      "                                      
    EOF
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        puts ""
        RubyCliGemProject::Scraper.get_page
        @ny_squad = RubyCliGemProject::Player.all
        @ny_squad.each.with_index(1) do |player, i|
            puts "#{i}:".colorize(:blue) + " #{player.name}".colorize(:green)

        end
     end

  def roster_encore
        #puts "                Here are your New York Knickerbockers!".colorize(:light_blue)
        puts ""
        puts "                           ::::::::::New York Knicks Roster::::::::::".colorize(:light_blue)
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        puts ""
        #@ny_squad = RubyCliGemProject::Player.all
        @ny_squad.each.with_index(1) do |player, i|
            puts "#{i}:".colorize(:blue) + " #{player.name}".colorize(:green)
            #binding.pry
        end
        puts ""
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        puts ""
  end

  def main_menu
        input = nil
        while input != "exit" #[[1..16], "exit", "roster"]
            #puts "Please enter a valid reply: i.e a number between 1 and #{RubyCliGemProject::Player.all.size} or roster or exit."
            puts "                          Please choose from the options listed below:".colorize(:blue) #.blue.on_green.blink
        #input.colorize(:green)

        #puts <<-DOC.gsub /^\s*/, ''.colorize(:light_blue ) #.colorize( :background => :red)
        puts "---------------------------------------------------------------------------------------------".colorize(:blue )
        puts ""
        puts "To see more info " + "type the number between 1 and #{RubyCliGemProject::Player.all.size} next to the " + 'player '.colorize(:green) + "you'd like to know more about." #.colorize(:blue ) #.colorize( :background => :light_blue)

        puts "To see team, " + "type " + 'roster '.colorize(:blue)  #.colorize(:blue ) #.on_red.underline

        puts  "To end program " + "type, " + 'exit'.colorize(:blue) #.blue.on_red.uncolorize
        puts ""
            #DOC
            input = gets.strip.downcase #.colorize(:red)

            index_range = Array(0..RubyCliGemProject::Player.all.length)
            index_range.map!(&:to_s)

        case input #.to_i
          # if statemant to catch anything between 0-all length


        when *index_range
            input = input.to_i - 1
            player = RubyCliGemProject::Player.all[input]
            RubyCliGemProject::Scraper.player_scrape(player)
            self.display_player(player)
        when "roster"
             roster_encore
            # else
     #     puts "Please enter a valid reply: i.e a number between 1 and #{RubyCliGemProject::Player.all.size} or roster or exit."
                        end
                    end
          end

          def goodbye
            puts ""
            puts "We know we're losing a ton of games right now but visit us often this off-season, things should get very interesting!"
    end

    def display_player(player_obj)

            puts "
                                        #{player_obj.name} #{player_obj.number}
                                        #{player_obj.player_college} - #{player_obj.player_salary}
                                        #{player_obj.position} - #{player_obj.player_height} -  #{player_obj.player_age} - #{player_obj.player_weight}
                                        #{player_obj.tag_games_played}: #{player_obj.games_played}
                                        #{player_obj.tag_points_per_game}: #{player_obj.points_per_game}
                                        #{player_obj.tag_field_goal_percentage }: #{player_obj.field_goal_percentage}
                                        #{player_obj.player_url}
                                        #{player_obj.player_headshot_big}
                                        ".colorize(:green)
                                        #{player_obj.player_headshot}
                                        #when 'more'
                                        #   RubyCliGemProject::Scraper.player_scrape(RubyCliGemProject::Player.all[0])
                                        #          puts " HERE'S MORE FOR YOU BUDDY!"
                                        #puts "
                                        #{RubyCliGemProject::Player.all[0].steals_per_game}
                                        #{RubyCliGemProject::Player.all[0].games_played} #{RubyCliGemProject::Player.all[0].field_goal_percentage}
                                        #" #{player_obj.player_headshot_big}
                                        #{player_obj.free_throw_percentage} - #{player_obj.rebounds_per_gamey}
                                        #{player_obj.assists_per_game} - #{player_obj.steals_per_game} -  #{player_obj.turnovers_per_game} - #{player_obj.points_per_game}
                                        #{player_obj.three_point_field_goal_percentage}
                                        #{player_obj.player_url}
                                        #{player_obj.player_headshot}".colorize(:green)
                    end
end