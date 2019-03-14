# #MVC #our controller
# #responsible for business logic/user interactions



# class RubyCliGemProject::CLI

#     def call
#         puts "-------------------------------------------------------------------------------------------------------------"
#         display_roster
#         puts "-------------------------------------------------------------------------------------------------------------"
#         menu
#         puts "-------------------------------------------------------------------------------------------------------------"
#         goodbye
#         puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
#     end
    
#     def display_roster
#         #here doc http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
#         #puts <<-DOC..gsub /^\s*/,''
        
#         puts "Here are your New York Knickerbockers:"
#         puts "---------------------------------------------display-roster--------------------------------------------------"
#         # #RubyCliGemProject::Scraper.knicks_roster
#         # #RubyCliGemProject::Player.all[0].name
#     RubyCliGemProject::Scraper.get_page #unless @ny_squad.any
#     @ny_squad = RubyCliGemProject::Player.all
#     @ny_squad.each.with_index do |player, i|
#       puts "#{i+1}: #{player.name}"
#     end #.uniq
#         #RubyCliGemProject::Scraper.knicks_roster
#         # puts <<-DOC.gsub /^\s*/, ''
#         # *1. First_player:
#         # Lu "Buckets" Daley
#         # Guard Goucher College 
#         # #24 5'9" - 180lbse
#         # --------------------------------------------------------------
#         # *2. Second_player: 
#         # Nikki "she's a shooter" Daley
#         # Guard Lasell College - 
#         # #10 5'5" - 130lbs
#         # DOC1
#     end

#     def roster_encore
#         RubyCliGemProject::Player.all.clear
#         display_roster #.uniq
#     end
#     #binding.pry
    
#     # def roster_from_before_need_to_fix
#     #     # @roster = RubyCliGemProject::Player.nyk_roster
#     #     # @roster.each_with_index do |solo, i|
#     #     #     puts "#{i+1}: #{solo} - #{solo.name} - #{solo.position} - #{solo.number}"
#     #     # end
#     # end

#     def menu
#         input = nil
#         while input != "exit"
#             puts <<-DOC.gsub /^\s*/, ''
#             Menu_Options
#             -------------------------------------------------------------------------------------------------------------
#             type the number next to the player you'd like to know more about 
#             type 'roster' to see the full roster again 
#             type 'exit' to end program:
#             DOC
#             input = gets.strip.downcase
#             #if input.to_i > 0
#              #   puts @nyk_players[input.to_i-1]
#              #elsif input == "roster"
#               #   display_roster
#               # else

# =begin
#     if input == @ny_squad[0]#-1]
#      @ny_squad[0].name

# =end
#         @ny_squad.unshift("blank")
#             if input == @ny_squad[1]
#         puts "yup, the man!"
#         puts @ny_squad[1]


# #case input
#               #when 1 == @ny_squad.index #[input.to_i ]
# #@ny_squad[input-1] 
# #puts "You did it Lu! No lie, someone should throw you a parade already!"
# #room_assignments.push("Hello, #{name}\! You'll be assigned to room #{index +1}\!") 


#                 # puts "
#                 #     #{@ny_squad[0].name} ##{@ny_squad[0].number} 
#                 #     #{@ny_squad[0].position} - #{@ny_squad[0].player_height} -  #{@ny_squad[0].player_age} - #{@ny_squad[0].player_weight}
#                 #     #{@ny_squad[0].player_college} - #{@ny_squad[0].player_salary} 
#                 #     #{@ny_squad[0].player_url}
#                 #     "

#                     #:player_height, :player_age, :player_weight, :player_college, :player_salary, :player_url
#                 #puts @ny_squad[0].send "#{number}"
#                     #RubyCliGemProject::Player.all[-1]                  #  puts RubyCliGemProject::Player.get_page[0]
#                   #.nyk_players[0]
#                   # "more info on player 1.."
#             #     when "2"
#             #     puts "
#             #         #{@ny_squad[1].name} ##{@ny_squad[1].number} 
#             #         #{@ny_squad[1].player_college} - #{@ny_squad[1].player_salary} 
#             #         #{@ny_squad[1].position} - #{@ny_squad[1].player_height} -  #{@ny_squad[1].player_age} - #{@ny_squad[1].player_weight}
#             #         #{@ny_squad[1].player_url}
#             #         "
#             #     when "3"
#             #       puts "more info on player 3..."
#             #   when "roster"
#             #       roster_encore
#             #press 91 to see guards, 92 to see forwards, 93 to see centers
#             #press 111 to see the first team, 112 to see the second team...etc
#             else
#             puts "Please enter a valid reply: i.e a number between 1-16 or roster or exit."
#             end
#          end
#      end

#     def goodbye
#         puts "We're losing a ton of games right now but visit us often this off-season, things should get very interesting!"
#     end
# end














#    when *index_range
#                     input = input.to_i - 1
#                     puts "
#                             #{RubyCliGemProject::Player.all[input].name} #{RubyCliGemProject::Player.all[input].number} 
#                             #{RubyCliGemProject::Player.all[input].player_headshot_big}
#                             #{RubyCliGemProject::Player.all[input].player_college} - #{RubyCliGemProject::Player.all[input].player_salary}
#                             #{RubyCliGemProject::Player.all[input].position} - #{RubyCliGemProject::Player.all[input].player_height} -  #{RubyCliGemProject::Player.all[input].player_age} - #{RubyCliGemProject::Player.all[input].player_weight}
#                             #{RubyCliGemProject::Player.all[input].player_url}
#                             ".colorize(:green)
#                             #{RubyCliGemProject::Player.all[input].player_headshot}


#######################
#proper method above
######################
#








  #when "1"
                #         puts "
                #             #{@ny_squad[0].name} ##{@ny_squad[0].number}
                #             #{@ny_squad[0].player_college} - No Annual Salary 
                #             #{@ny_squad[0].position} - #{@ny_squad[0].player_height} -  #{@ny_squad[0].player_age} - #{@ny_squad[0].player_weight}
                #             #{@ny_squad[0].player_url}
                #             ".colorize(:green)
                #             ##{@ny_squad[0].player_salary}
                # when "2"
                #         puts "
                #             #{@ny_squad[1].name} ##{@ny_squad[1].number}
                #             #{@ny_squad[1].player_college} - #{@ny_squad[1].player_salary}
                #             #{@ny_squad[1].position} - #{@ny_squad[1].player_height} -  #{@ny_squad[1].player_age} - #{@ny_squad[1].player_weight}
                #             #{@ny_squad[1].player_url}
                #             ".colorize(:green)

                # when "3"
                #         puts "
                #             #{@ny_squad[2].name} ##{@ny_squad[2].number}
                #             #{@ny_squad[2].player_college} - #{@ny_squad[2].player_salary}
                #             #{@ny_squad[2].position} - #{@ny_squad[2].player_height} -  #{@ny_squad[2].player_age} - #{@ny_squad[2].player_weight}
                #             #{@ny_squad[2].player_url}
                #             ".colorize(:green)
                # when "4"    #Mario Hezonja #8  - - $6,500,000 SF - 6' 8" -  24 - 225 lbs http://www.espn.com/nba/player/_/id/2995706
                #         puts "
                #             #{@ny_squad[3].name} ##{@ny_squad[3].number}
                #             No College - #{@ny_squad[3].player_salary}
                #             #{@ny_squad[3].position} - #{@ny_squad[3].player_height} -  #{@ny_squad[3].player_age} - #{@ny_squad[3].player_weight}
                #             #{@ny_squad[3].player_url}
                #             ".colorize(:green)
                #             ##{@ny_squad[3].player_college}

                # when "5"    #Isaiah Hicks #4 North Carolina - - PF - 6' 9" -  24 - 230 lbs http://www.espn.com/nba/player/_/id/3074765
                #         puts "
                #             #{@ny_squad[4].name} ##{@ny_squad[4].number}
                #             #{@ny_squad[4].player_college} - No Annual Salary 
                #             #{@ny_squad[4].position} - #{@ny_squad[4].player_height} -  #{@ny_squad[4].player_age} - #{@ny_squad[4].player_weight}
                #             #{@ny_squad[4].player_url}
                #             ".colorize(:green)
                #             # - #{@ny_squad[4].player_salary}
                # when "6"
                #         puts "
                #             #{@ny_squad[5].name} ##{@ny_squad[5].number}
                #             #{@ny_squad[5].player_college} - #{@ny_squad[5].player_salary}
                #             #{@ny_squad[5].position} - #{@ny_squad[5].player_height} -  #{@ny_squad[5].player_age} - #{@ny_squad[5].player_weight}
                #             #{@ny_squad[5].player_url}
                #             ".colorize(:green)
                # when "7"
                #         puts "
                #             #{@ny_squad[6].name} ##{@ny_squad[6].number}
                #             #{@ny_squad[6].player_college} - #{@ny_squad[6].player_salary}
                #             #{@ny_squad[6].position} - #{@ny_squad[6].player_height} -  #{@ny_squad[6].player_age} - #{@ny_squad[6].player_weight}
                #             #{@ny_squad[6].player_url}
                #             ".colorize(:green)
                # when "8"
                #         puts "
                #             #{@ny_squad[7].name} ##{@ny_squad[7].number}
                #             #{@ny_squad[7].player_college} - #{@ny_squad[7].player_salary}
                #             #{@ny_squad[7].position} - #{@ny_squad[7].player_height} -  #{@ny_squad[7].player_age} - #{@ny_squad[7].player_weight}
                #             #{@ny_squad[7].player_url}
                #             ".colorize(:green)
                # when "9"
                #         puts "
                #             #{@ny_squad[8].name} ##{@ny_squad[8].number}
                #             #{@ny_squad[8].player_college} - #{@ny_squad[8].player_salary}
                #             #{@ny_squad[8].position} - #{@ny_squad[8].player_height} -  #{@ny_squad[8].player_age} - #{@ny_squad[8].player_weight}
                #             #{@ny_squad[8].player_url}
                #             ".colorize(:green)

                # when "10"   # Emmanuel Mudiay #1 - - $4,294,480 PG - 6' 5" -  23 - 200 lbs  http://www.espn.com/nba/player/_/id/3892818
                #         puts "
                #             #{@ny_squad[9].name} ##{@ny_squad[9].number}
                #             No College - #{@ny_squad[9].player_salary}
                #             #{@ny_squad[9].position} - #{@ny_squad[9].player_height} -  #{@ny_squad[9].player_age} - #{@ny_squad[9].player_weight}
                #             #{@ny_squad[9].player_url}
                #             ".colorize(:green)
                #             ##{@ny_squad[9].player_college}

                # when "11" #Frank Ntilikina #11 - - $4,155,720 PG - 6' 6" -  20 - 200 lbs http://www.espn.com/nba/player/_/id/4230547
                #     puts "
                #             #{@ny_squad[10].name} ##{@ny_squad[10].number}
                #             No College - #{@ny_squad[10].player_salary}
                #             #{@ny_squad[10].position} - #{@ny_squad[10].player_height} -  #{@ny_squad[10].player_age} - #{@ny_squad[10].player_weight}
                #             #{@ny_squad[10].player_url}
                #             ".colorize(:green)
                #                 #{@ny_squad[10].player_college}
                # when "12"
                #         puts "
                #             #{@ny_squad[11].name} ##{@ny_squad[11].number}
                #             #{@ny_squad[11].player_college} - #{@ny_squad[11].player_salary}
                #             #{@ny_squad[11].position} - #{@ny_squad[11].player_height} -  #{@ny_squad[11].player_age} - #{@ny_squad[11].player_weight}
                #             #{@ny_squad[11].player_url}
                #             ".colorize(:green)

                # when "13"
                #         puts "
                #             #{@ny_squad[12].name} ##{@ny_squad[12].number}
                #             #{@ny_squad[12].player_college} - #{@ny_squad[12].player_salary}
                #             #{@ny_squad[12].position} - #{@ny_squad[12].player_height} -  #{@ny_squad[12].player_age} - #{@ny_squad[12].player_weight}
                #             #{@ny_squad[12].player_url}
                #             ".colorize(:green)

                # when "14"
                #         puts "
                #             #{@ny_squad[13].name} ##{@ny_squad[13].number}
                #             #{@ny_squad[13].player_college} - #{@ny_squad[13].player_salary}
                #             #{@ny_squad[13].position} - #{@ny_squad[13].player_height} -  #{@ny_squad[13].player_age} - #{@ny_squad[13].player_weight}
                #             #{@ny_squad[13].player_url}
                #             ".colorize(:green)

                # when "15"
                #         puts "
                #             #{@ny_squad[14].name} ##{@ny_squad[14].number}
                #             #{@ny_squad[14].player_college} - #{@ny_squad[14].player_salary}
                #             #{@ny_squad[14].position} - #{@ny_squad[14].player_height} -  #{@ny_squad[14].player_age} - #{@ny_squad[14].player_weight}
                #             #{@ny_squad[14].player_url}
                #             ".colorize(:green)

                # when "16"
                #         puts "
                #             #{@ny_squad[15].name} ##{@ny_squad[15].number}
                #             #{@ny_squad[15].player_college} - #{@ny_squad[15].player_salary}
                #             #{@ny_squad[15].position} - #{@ny_squad[15].player_height} -  #{@ny_squad[15].player_age} - #{@ny_squad[15].player_weight}
                #             #{@ny_squad[15].player_url}
                #             ".colorize(:green)