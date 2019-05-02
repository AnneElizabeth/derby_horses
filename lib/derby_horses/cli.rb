class DerbyHorses::CLI

  def start
    puts "Hello Kentucky Derby fan!"
    puts "The race horses competing in the 2019 Kentucky Derby are:"
    puts ""
    puts "1. War of Will"
    puts "2. Tax"
    puts "3. By My Standards"
    puts "4. Gray Magician"
    puts "5. Improbable"
    puts "6. Vekoma"
    puts "7. Maximum Security"
    puts "8. Tacitus"
    puts "9. Plus Que Parfait"
    puts "10. Cutting Humor"
    puts "11. Haikal"
    puts "12. Omaha Beach"
    puts "13. Code of Honor"
    puts "14. Win Win Win"
    puts "15. Master Fencer JPN"
    puts "16. Game Winner"
    puts "17. Roadster"
    puts "18. Long Range Toddy"
    puts "19. Spinoff"
    puts "20. Country House"
    puts "21. Bodexpress"
    puts "22. Signalman"
    puts "23. Anothertwistafate"
    puts "24. Sueno"
    puts "25. Bourbon War"
    puts ""
    puts "Type in the number of the horse you would like to know more about."
    input = gets.strip
    case input
      when "1"
        puts "Will at War is a horse."
        horse_url = "https://www.kentuckyderby.com/horses/war-of-will"
        DerbyHorses::Scraper.scrape_horse_info(horse_url)
      when "2"
        puts "Tax is a horse."
      when "3"
        puts "By My Standards is a horse."
      else
        puts "Oops! Invalid input. Please try again."
      end
  end

end
