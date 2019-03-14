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
       # puts ""
        #puts "---------------------------------------------------------------------------------------------".colorize(:red)
        player_menu
        puts ""
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        goodbye
        puts ""
        puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^".colorize(:red)
        puts ""
  end

  def display_roster
        #puts ""
        #puts "                                    " + "Hey Knicks Superfan! ".colorize(:light_blue)
        puts "                                         " + "Here are Your ".colorize(:light_blue)
        puts ""
        puts "                                              " + "New York ".colorize(:light_blue)
        puts puts <<-'EOF'

                                    _  __      _      _
                                    | |/ /     (_)    | |
                                    | ' / _ __  _  ___| | _____
                                    |  < | '_ \| |/ __| |/ / __|
                                    | . \| | | | | (__|   <\__ \
                                    |_|\_\_| |_|_|\___|_|\_\___/

    EOF
        puts "---------------------------------------------------------------------------------------------".colorize(:red)
        puts ""
        RubyCliGemProject::Scraper.get_page #unless @ny_squad.any
        @ny_squad = RubyCliGemProject::Player.all
        @ny_squad.each.with_index(1) do |player, i|
            puts "#{i}:".colorize(:blue) + " #{player.name}".colorize(:green)
            #binding.pry
        end #.uniq
  end

  def roster_encore
        #RubyCliGemProject::Player.all.clear
        # @ny_squad = RubyCliGemProject::Player.all
        # @ny_squad.each.with_index(1) do |player, i|
        #     puts "#{i}:".colorize(:blue) + " #{player.name}".colorize(:green)
        #     #binding.pry
        # end #.uniq
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
            #DOC
            input = gets.strip.downcase #.colorize(:red)

            index_range = Array(0..RubyCliGemProject::Player.all.length)
            index_range.map!(&:to_s)

        case input #.to_i
          # if statemant to catch anything between 0-all length


        when *index_range
            input = input.to_i - 1
              puts "
                            #{RubyCliGemProject::Player.all[input].name} #{RubyCliGemProject::Player.all[input].number}
                            #{RubyCliGemProject::Player.all[input].player_college} - #{RubyCliGemProject::Player.all[input].player_salary}
                            #{RubyCliGemProject::Player.all[input].position} - #{RubyCliGemProject::Player.all[input].player_height} -  #{RubyCliGemProject::Player.all[input].player_age} - #{RubyCliGemProject::Player.all[input].player_weight}
                            #{RubyCliGemProject::Player.all[input].player_url}
                            #{RubyCliGemProject::Player.all[input].player_headshot_big}
                            ".colorize(:green)
                            #{RubyCliGemProject::Player.all[input].player_headshot}
                            # else
                            #     puts "Please enter a valid reply: i.e a number between 1 and #{RubyCliGemProject::Player.all.size} or roster or exit."
        when 'more'
                            RubyCliGemProject::Scraper.player_scrape
                            puts " HERE'S MORE FOR YOU BUDDY!"
                            puts "
                            #{RubyCliGemProject::Player.all[0].steals_per_game}
                            #{RubyCliGemProject::Player.all[0].games_played} #{RubyCliGemProject::Player.all[0].field_goal_percentage}
                           " #{RubyCliGemProject::Player.all[input].player_headshot_big}
                            #{RubyCliGemProject::Player.all[input].free_throw_percentage} - #{RubyCliGemProject::Player.all[input].rebounds_per_gamey}
                            #{RubyCliGemProject::Player.all[input].assists_per_game} - #{RubyCliGemProject::Player.all[input].steals_per_game} -  #{RubyCliGemProject::Player.all[input].turnovers_per_game} - #{RubyCliGemProject::Player.all[input].points_per_game}
                            #{RubyCliGemProject::Player.all[input].three_point_field_goal_percentage}
                            #{RubyCliGemProject::Player.all[input].player_url}
                            #{RubyCliGemProject::Player.all[input].player_headshot}".colorize(:green)

        when "roster"
                            roster_encore

        end
   end


#     def player_menu
#      input = nil
#         while input != "exit" #[[1..16], "exit", "roster"]
#             #puts "Please enter a valid reply: i.e a number between 1 and #{RubyCliGemProject::Player.all.size} or roster or exit."
#             puts "                          To learn more about the current player, type " + 'more '.colorize(:blue)
#                                             #Please choose from the options listed below:".colorize(:blue)
#         #puts <<-DOC.gsub /^\s*/, ''.colorize(:light_blue ) #.colorize( :background => :red)
#         puts "---------------------------------------------------------------------------------------------".colorize(:blue )
#         puts ""
#         puts "To see a different player " + "type the number between 1 and #{RubyCliGemProject::Player.all.size} next to the " + 'player '.colorize(:green) + "you'd like to know more about." #.colorize(:blue ) #.colorize( :background => :light_blue)
#         puts "To see team, " + "type " + 'roster '.colorize(:blue)  #.colorize(:blue ) #.on_red.underline
#         puts  "To end program " + "type, " + 'exit'.colorize(:blue) #.blue.on_red.uncolorize
#             #DOC
#             input = gets.strip.downcase #.colorize(:red)
#   index_range = Array(0..RubyCliGemProject::Player.all.length)
#   index_range.map!(&:to_s)

#         case input #.to_i
# #               # if statemant to catch anything between 0-all length
#         when 'more'

# puts "
#                              #{RubyCliGemProject::Player.all[input].name}
#                              #{RubyCliGemProject::Player.all[input].games_played} #{RubyCliGemProject::Player.all[input].field_goal_percentage}
#                              #{RubyCliGemProject::Player.all[input].player_headshot_big}
#                              #{RubyCliGemProject::Player.all[input].free_throw_percentage} - #{RubyCliGemProject::Player.all[input].rebounds_per_gamey}
#                              #{RubyCliGemProject::Player.all[input].assists_per_game} - #{RubyCliGemProject::Player.all[input].steals_per_game} -  #{RubyCliGemProject::Player.all[input].turnovers_per_game} - #{RubyCliGemProject::Player.all[input].points_per_game}
#                              #{RubyCliGemProject::Player.all[input].three_point_field_goal_percentage}
#                              #{RubyCliGemProject::Player.all[input].player_url}
#                              #{RubyCliGemProject::Player.all[input].player_headshot}
#                              ".colorize(:green)

# :free_throw_percentage, :games_played, :field_goal_percentage,
# :three_point_field_goal_percentage,
# :rebounds_per_game, :assists_per_game,
# :blocks_per_game,:steals_per_game,
# :turnovers_per_game, :points_per_game





                # when *index_range
                #     input = input.to_i - 1
                #     puts "
                #             #{RubyCliGemProject::Player.all[input].name} #{RubyCliGemProject::Player.all[input].number}
                #             #{RubyCliGemProject::Player.all[input].player_headshot_big}
                #             #{RubyCliGemProject::Player.all[input].player_college} - #{RubyCliGemProject::Player.all[input].player_salary}
                #             #{RubyCliGemProject::Player.all[input].position} - #{RubyCliGemProject::Player.all[input].player_height} -  #{RubyCliGemProject::Player.all[input].player_age} - #{RubyCliGemProject::Player.all[input].player_weight}
                #             #{RubyCliGemProject::Player.all[input].player_url}
                #             ".colorize(:green)
                            #{RubyCliGemProject::Player.all[input].player_headshot}
               # when "roster"
                      #  roster_encore
                                # else
        #     puts "Please enter a valid reply: i.e a number between 1 and #{RubyCliGemProject::Player.all.size} or roster or exit."
            #end









          end


# free_throw_percentage, games_played,
# field_goal_percentage,
# three_point_field_goal_percentage,
# rebounds_per_game, assists_per_game,
# blocks_per_game,steals_per_game,
# turnovers_per_game, points_per_game

    def goodbye
        puts ""
        puts "We know we're losing a ton of games right now but visit us often this off-season, things should get very interesting!"
    end
end

#until ['number',]
