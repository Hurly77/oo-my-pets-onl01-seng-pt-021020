require 'pry'
class Owner
attr_accessor
attr_reader :name, :species
@@all = []
def initialize(name)
  @name = name
  @species = "human"
  @@all << self

end

def say_species
  says ="I am a human."
  says
end

def self.all
@@all
end

def self.count
the_count = self.all.count {|owner| owner == Owner.new(name }
the_count
binding.pry
end

end
