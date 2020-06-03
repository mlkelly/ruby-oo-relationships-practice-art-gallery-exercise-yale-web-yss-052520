require_relative '../config/environment.rb'

a1= Artist.new("Maura", 1)
a2= Artist.new("Kelly", 1)
a3= Artist.new("Karen", 2)
a4= Artist.new("Tim", 3)

g1= Gallery.new("Gallery1", "Pittsburgh")
g2= Gallery.new("Gallery2", "Pittsburgh")
g3= Gallery.new("Gallery3", "New York")

p1= Painting.new("Happy", 100, g1, a1)
p2= Painting.new("Sad", 150, g1, a2)
p3= Painting.new("Ambivalent", 200, g2, a2)
p4= Painting.new("Weary", 250, g2, a3)
p5= Painting.new("Angry", 300, g2, a3)
p6= Painting.new("Angst", 400, g3, a4)

binding.pry

puts "Bob Ross rules."
