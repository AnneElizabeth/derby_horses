#CLI Controller

class DerbyHorses::CLI

  def start
    puts "Hello Kentucky Derby fan! The race horses competing in the 2019 Kentucky Derby are:"
    DerbyHorses::Scraper.new.scrape_leaderboard
    list_horses
    menu
    goodbye
  end

  def list_horses
      DerbyHorses::Horse.each.with_index(1) do |horse, i|
        puts "#{i}. #{name}"
      end
    end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the horse you would like to know more about."
      puts "If you'd like to see the list of horses again, enter LIST."
      puts "Enter EXIT to exit the program."
      input = gets.strip.downcase

      if input.to_i > 0
        the_horse =  @horses[input.to_i-1]
        puts "#{i}. #{horse.name}"
      elsif input == "list" || "LIST" || "List"
        list_horses
      else
        puts "Whoops. That's an invalid entry. Please try again."
      end
    end
  end

  def goodbye
    puts "Enjoy the 145th running of the Kentucky Derby!"
  end
end
