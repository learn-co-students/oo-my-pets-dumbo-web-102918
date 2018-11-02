require 'pry'

class Owner

  attr_accessor :pets, :name, :mood
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"

    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    fishy = Fish.new(fish)
    @pets[:fishes] << fishy
  end

  def buy_cat(cat)
    kitty = Cat.new(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    doggy = Dog.new(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy" }
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def sell_pets
    @pets.map do |pet, details|
      details.map do |detail|
        detail.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
