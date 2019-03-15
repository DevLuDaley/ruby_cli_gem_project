#MVC #our controller
#responsible for business logic/user interactions
#require 'artii'
#require 'rainbow'
class RubyCliGemProject::CLI

  def call
        puts ''
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        display_roster
        puts ''
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        main_menu
        puts ''
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        goodbye
        puts ''
        puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^".colorize(:red)
        puts ''
  end

  def display_roster
        puts ''
        a = Artii::Base.new
        a.asciify('           Here  Are  Your')#.colorize(:red)
        puts a.asciify('                 Here  Are  Your').colorize(:cyan) #.background(:cyan)

        b = Artii::Base.new
        b.asciify('                         New York')
        puts b.asciify('                             New York').colorize(:cyan) #.background(:blue)

        c = Artii::Base.new
        c.asciify('          *    KNICKS    *')
        puts c.asciify('                   *    KNICKS    *').colorize(:cyan)
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        puts ''

        RubyCliGemProject::Scraper.get_page
        @ny_squad = RubyCliGemProject::Player.all
        @ny_squad.each.with_index(1) do |player, i|
            puts "                                    #{i}:".colorize(:blue) + " #{player.name}".colorize(:cyan)
        end
     end

  def roster_encore
        #puts "                Here are your New York Knickerbockers!".colorize(:light_blue)
        puts ''
        puts '                           ::::::::::New York Knicks Roster::::::::::'.colorize(:cyan)
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        puts ''
        #@ny_squad = RubyCliGemProject::Player.all
        @ny_squad.each.with_index(1) do |player, i|
            puts "                                    #{i}:".colorize(:blue) + " #{player.name}".colorize(:cyan)
            #binding.pry
        end
        puts ''
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        puts ''
  end

  def main_menu
        input = nil
        while input != "exit" #[[1..16], "exit", "roster"]
            #puts "Please enter a valid reply: i.e a number between 1 and #{RubyCliGemProject::Player.all.size} or roster or exit."
            puts "                          Please choose from the options listed below:".colorize(:blue) #.blue.on_green.blink
        #input.colorize(:green)

        #puts <<-DOC.gsub /^\s*/, ''.colorize(:light_blue ) #.colorize( :background => :red)
        puts "---------------------------------------------------------------------------------------------------".colorize(:red)
        puts ''
        puts "To see more info ".colorize(:blue) + "type the number between 1 and #{RubyCliGemProject::Player.all.size} next to the ".colorize(:blue) + 'player '.colorize(:cyan) + "you'd like to know more about.".colorize(:blue) #.colorize(:blue ) #.colorize( :background => :light_blue)

        puts "To see team, type ".colorize(:blue) + 'roster '.colorize(:cyan)  #.colorize(:blue ) #.on_red.underline

        puts  "To end program ".colorize(:blue) + "type, ".colorize(:blue) + 'exit'.colorize(:cyan) #.blue.on_red.uncolorize
        puts ''
            #DOC
            input = gets.strip.downcase #.colorize(:red)

            index_range = Array(1..RubyCliGemProject::Player.all.length)
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
            puts ''
            puts 'This hasn\'t been the season that we\'d hoped for but visit us often this off-season.'.colorize(:cyan)
            puts 'Things should get very interesting!'.colorize(:cyan)
    end

    def display_player(player_obj)
        case goodbye
            when player_obj.player_salary.to_i < 10
            puts "
                                #{player_obj.name} Number: #{player_obj.number}
                                #{player_obj.position} - #{player_obj.player_height} -  #{player_obj.player_age} - #{player_obj.player_weight}
                                Player Salary: No Salary Player College: #{player_obj.player_college}
                                Points Per Game: #{player_obj.points_per_game}
                                Assists Per Game: #{player_obj.assists_per_game}
                                Rebounds Per Game: #{player_obj.rebounds_per_game}
                                #{player_obj.player_url}
                                #{player_obj.player_headshot_big}
                                    ".colorize(:cyan)
 
            when player_obj.player_college ==  "-"
            puts "
                                #{player_obj.name} Number: #{player_obj.number}
                                #{player_obj.position} - #{player_obj.player_height} -  #{player_obj.player_age} - #{player_obj.player_weight}
                                Player Salary: #{player_obj.player_salary} Player College: No College
                                Points Per Game: #{player_obj.points_per_game}
                                Assists Per Game: #{player_obj.assists_per_game}
                                Rebounds Per Game: #{player_obj.rebounds_per_game}
                                #{player_obj.player_url}
                                #{player_obj.player_headshot_big}
                                    ".colorize(:cyan)
 
        else 
            puts "
                                #{player_obj.name} Number: #{player_obj.number}
                                #{player_obj.position} - #{player_obj.player_height} -  #{player_obj.player_age} - #{player_obj.player_weight}
                                Player Salary: #{player_obj.player_salary} Player College: #{player_obj.player_college}
                                Points Per Game: #{player_obj.points_per_game}
                                Assists Per Game: #{player_obj.assists_per_game}
                                Rebounds Per Game: #{player_obj.rebounds_per_game}
                                #{player_obj.player_url}
                                #{player_obj.player_headshot_big}
                                    ".colorize(:cyan)
 binding.pry
                    end
               # end
            end
                end