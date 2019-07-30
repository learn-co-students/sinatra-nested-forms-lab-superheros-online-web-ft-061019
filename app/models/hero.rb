class Hero
   attr_accessor :name, :power, :bio

   @@all = []

   def initialize(hero_hash)
      self.name = hero_hash["name"]
      self.power = hero_hash["power"]
      self.bio = hero_hash["bio"]
      @@all << self
   end

   def self.all
      @@all
   end
end