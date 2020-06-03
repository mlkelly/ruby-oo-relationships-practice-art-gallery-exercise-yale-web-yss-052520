class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map(&:gallery).uniq
  end

  def cities
    galleries.map(&:city).uniq
  end

  def self.total_experience
    self.all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific 
    # must return the artist instance (meaning, name and yrs experience)
    # for this to work years of experience can't = 0, which I guess makes sense
    self.all.max_by {|artist| artist.paintings.count/artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, artist == self)
  end

end
