

class DerbyHorses::Scraper

  def self.scrape_horse_info(horse_url)
    web_page = Nokogiri::HTML(open(horse_url))
    web_page.css("div.owner-cell a").text
    web_page.css("div.trainer-cell a").text
    web_page.css("div.breeder-cell").text
    #breeder.css("div.text-style-insight-label").text
    web_page.css("div.inset-cell p")[0].text
    web_page.css("div.inset-cell p")[1].text
    web_page.css("div.inset-cell p")[2].text
    binding.pry

  end





end
