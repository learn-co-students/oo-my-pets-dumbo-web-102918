class Owner
  # code goes here
#####################
# Class variables
@@all = []
#####################
  attr_accessor :pets, :name
  attr_reader :species
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def buy_fish(name)
    tmp = Fish.new(name)
    @pets[:fishes] << tmp
  end
  def say_species
    "I am a #{@species}."
  end
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood  = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood  = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood  = "happy"}
  end
  def sell_pets
    @pets.each do |k,v|
      v.each {|pet| pet.mood = "nervous"}
    end
    @pets.clear
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
##############
#Class methods
  def self.all
    @@all
  end
  def self.count
    @@all.size
  end
  def self.reset_all
    @@all.clear
  end
end
