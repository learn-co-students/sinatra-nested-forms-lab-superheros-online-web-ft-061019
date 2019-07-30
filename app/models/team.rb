class Team
   attr_accessor :name, :motto

   @@all = []

   def initialize(team_hash)
      self.name = team_hash["name"]
      self.motto = team_hash["motto"]
      @@all << self
   end

   def self.all
      @@all
   end
end