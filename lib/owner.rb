require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets

    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    self.pets.clear
  end

  def list_pets
    cats = self.pets[:cats].count
    dogs = self.pets[:dogs].count
    fish = self.pets[:fishes].count
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
