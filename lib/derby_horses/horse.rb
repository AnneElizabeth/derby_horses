class DerbyHorses::Horse
  attr_accessor :name, :owner, :trainer, :sex, :color, :foaldate

  @@all = []

  def initialize(name, owner, trainer, sex, color, foaldate)
    @name = name
    @owner = owner
    @trainer = trainer
    @sex = sex
    @color = color
    @foaldate = foaldate
    #@profile = profile

    @@all << self
  end

  def self.all
    @@all
  end

end
