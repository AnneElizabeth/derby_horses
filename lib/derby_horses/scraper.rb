class Scraper

  def scrape_leaderboard
    html = open("https://www.kentuckyderby.com/horses/leaderboard")
    doc = Nokogiri::HTML(html)
    doc.css("header.layout-cell a").each do |horse|
        name = horse.css("h1").text
        Horse.new(name, owner, trainer, sex, color, foaldate)

    #binding.pry
    end
  end


end
