class Song
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def create #instantiates an instance using .new but
    #also invokes #save on that instance,
    #forcing it to persist immediately.
  end

end
