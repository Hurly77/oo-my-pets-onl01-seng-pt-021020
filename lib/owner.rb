require 'pry'
class Owner
attr_accessor :cat
attr_reader :name, :species
@@all = []
def initialize(name)
  @name = name
  @species = "human"
  @@all << self
  @cats = []


end

def say_species
  says ="I am a human."
  says
end

def self.all
@@all
end

def self.count
self.all.count
end

def self.reset_all
@@all.clear
end

def cats
Cat.all.select {|cat| cat.owner == self}

end

def dogs
  Dog.all.select {|dog| dog.owner == self}
end

def buy_cat(name)
  name = Cat.new(name, self)
end

def buy_dog(name)
  name = Dog.new(name, self)
end

def walk_dogs
<<<<<<< HEAD
dogs.map {|dog| dog.mood = "happy"}
=======
# dogs.map {|dog| dog.mood = "happy"}
>>>>>>> a3b1c05980502c89f0a6abce3d21ef4242907163
end

def feed_cats
  cats.map {|cat| cat.mood = "happy"}
end

def sell_pets
  dogs.map {|dog| dog.mood = "nervous"}
  cats.map {|cat| cat.mood = "nervous"}
  dogs.select {|dog| dog.owner = nil}
  cats.select {|cat| cat.owner = nil}
end
def list_pets
return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end
end
