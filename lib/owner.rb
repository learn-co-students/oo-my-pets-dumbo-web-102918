require "pry"

class Owner
    attr_reader :species
    attr_accessor :name, :pets


    @@all = []

    def self.all
      @@all
    end

    def self.count
      @@all.count
    end

    def self.reset_all
      @@all = []
    end

    def initialize(name=nil)
      @name = name
      @species = "human"
      @pets = {:fishes=> [], :dogs => [], :cats => []}
      @@all << self
    end

    def say_species
      "I am a #{self.species}."
    end

    def buy_fish(name_of_fish)
      self.pets[:fishes] << Fish.new(name_of_fish)
    end

    def buy_cat(name_of_cat)
      self.pets[:cats] << Cat.new(name_of_cat)
    end

    def buy_dog(name_of_dog)
      self.pets[:dogs] << Dog.new(name_of_dog)
    end

    def walk_dogs
      self.pets[:dogs].each{|dog|dog.mood = "happy"}
    end

    def play_with_cats
      self.pets[:cats].each{|cat|cat.mood = "happy"}
    end

    def feed_fish
      self.pets[:fishes].each{|fish|fish.mood = "happy"}
    end

    def sell_pets
      self.pets[:fishes].each{|fish|fish.mood = "nervous"}
      self.pets[:dogs].each{|dog|dog.mood = "nervous"}
      self.pets[:cats].each{|cat|cat.mood = "nervous"}
      @pets = {:fishes=> [], :dogs=> [], :cats=> []}
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end




   # Instance Methods
   # 8. walk_dogs -- walk the dogs which makes the dogs' moods happy
   # 9. play_with_cats -- play withthe cats which makes the cats moods happy
   # 10. feed_fish -- feeds the fishes which makes the fishes' mood happy
   # 11. sell_pets -- can sell all its pets, which make them nervous
   # 12. list_pets -- can list off its pets




end
