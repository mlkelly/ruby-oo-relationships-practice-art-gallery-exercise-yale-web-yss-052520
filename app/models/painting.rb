# this is the joiner class

class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map {|painting| painting.price}.sum
  end

end
