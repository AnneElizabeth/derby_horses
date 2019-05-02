class DerbyHorses::CLI

  def start
    puts "Hello Kentucky Derby fan!"
    puts "The race horses competing in the 2019 Kentucky Derby are:"
    puts ""
    puts "War of Will"
    puts "Tax"
    puts "By My Standards"
    puts "Gray Magician"
    puts "Improbable"
    puts "Vekoma"
    puts "Maximum Security"
    puts "Tacitus"
    puts "Plus Que Parfait"
    puts "Cutting Humor"
    puts "Haikal"
    puts "Omaha Beach"
    puts "Code of Honor"
    puts "Win Win Win"
    puts "Master Fencer JPN"
    puts "Game Winner"
    puts "Roadster"
    puts "Long Range Toddy"
    puts "Spinoff"
    puts "Country House"
    puts "Bodexpress"
    puts "Signalman"
    puts "Anothertwistafate"
    puts "Sueno"
    puts "Bourbon War"
    puts ""
    puts "Type in the name of a horse you would like to know more about."
    input = gets.strip.downcase
    case input
      when "war of will"
        puts "War of Will is a horse."
      when "tax"
        puts "Tax is a horse."
      when "by my standards"
        puts "By My Standards is a horse."
      else
        puts "Oops! Invalid input. Please try again."
      end
  end

end
