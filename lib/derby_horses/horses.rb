class DerbyHorses::Horses
  def self.current
    #returns all instances of Horses

    puts <<~DOC
    1. War of Will
    2. Tax
    DOC

    horse_1 = self.new
    horse_1.name = "War of Will"
    horse_1.owner = "Gary Barber"
    horse_1.trainer = "Mark E. Casse"
    horse_1.breeder = "Flaxman Holdings Limited"
    horse_1.sex = "Colt"
    horse_1.color = "Bay"
    horse_1.birthplace = "Kentucky"
    horse_1.foaldate = "April 17, 2016"
    horse_1.profile = "horse profile text"
    horse_1.url = "https://www.kentuckyderby.com/horses/war-of-will"

    horse_2 = self.new
    horse_2.name = "War of Will"
    horse_2.owner = "Gary Barber"
    horse_2.trainer = "Mark E. Casse"
    horse_2.breeder = "Flaxman Holdings Limited"
    horse_2.sex = "Colt"
    horse_2.color = "Bay"
    horse_2.birthplace = "Kentucky"
    horse_2.foaldate = "April 17, 2016"
    horse_2.profile = "horse profile text"
    horse_2.url = "https://www.kentuckyderby.com/horses/war-of-will"
  end
end
