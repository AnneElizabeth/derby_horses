#CLI Controller

class DerbyHorses::CLI

  def start
    puts "Hello Kentucky Derby fan!"
    puts "The race horses competing in the 2019 Kentucky Derby are:"
    list_horses
    menu
    goodbye
  end

  def list_horses

    @horses = DerbyHorses::Horses.current
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the horse you would like to know more about./nIf you'd like to see the list of horses again, enter LIST./nexEnter EXIT to exit the program."
      input = gets.strip.downcase
      case input
      when "1"
        puts "horse owner, trainer, breeder, current odds, profile for Will at War"
        horse_url = "https://www.kentuckyderby.com/horses/war-of-will"
        horse_info = DerbyHorses::Scraper.scrape_horse_info(horse_url)
      when "2"
        puts "Tax is a horse."
      when "3"
        puts "By My Standards is a horse."
      when "list" || "List" || "LIST"
        list_horses
      else
        puts "Whoops. That's an invalid entry. Please try again."
    end
  end

  def goodbye
    puts "Enjoy the 145th running of the Kentucky Derby!"
  end
end
