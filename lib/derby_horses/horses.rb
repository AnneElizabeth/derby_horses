class DerbyHorses::Horses
  attr_accessor :name, :owner, :trainer, :breeder, :sex, :color, :birthplace, :foaldate, :profile, :horse_url

  def initialize(horse_url)
    @horse_url = horse_url
  end

  def self.current
    # Scrape KD site and return data about horses
    self.scrape_horse_info
  end

  def self.scrape_horse_info
    horses = []
    horses << self.scrape_horse

    # Go to KD.com, find a horse, extract the properties, instantiate a horse
    horses
  end

  def self.scrape_horse
    web_page = Nokogiri::HTML(open("https://www.kentuckyderby.com/horses"))
    horse_url = "https://www.kentuckyderby.com/horses/" + web_page.search('td').css("a.blended-button").attribute("href").value

    horse_page = Nokogiri::HTML(open(horse_url))
binding.pry
    name = horse_page.css("h1.text-style-display").text



  end

end
