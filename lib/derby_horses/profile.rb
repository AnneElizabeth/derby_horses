class DerbyHorses::Profile
  attr_accessor :horse_profile

  @@all = []

  def initialize(profile)
    @horse_profile = horse_profile
    @@all << self
  end

  def all
    @@all
  end

end
