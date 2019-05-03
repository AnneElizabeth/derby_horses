class DerbyHorses::Scraper

  def self.scrape_horse_info(horse_url)
    web_page = Nokogiri::HTML(open(horse_url))
    web_page.css("div.owner-cell a").text
    web_page.css("div.trainer-cell a").text
    web_page.css("div.breeder-cell").text
    #breeder.css("div.text-style-insight-label").text
    array_of_p = web_page.css("div.inset-cell p")[0..2].text
    array_of_p.tap do |horse_profile|
      DerbyHorses::Profile.new(horse_profile)
    end

  end





end
