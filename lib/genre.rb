class Genre
  extend Concerns::Findable
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize
    save
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    genre = new(name)
    genre.save
    genre
  end

end
