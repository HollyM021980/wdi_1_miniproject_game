require 'pry'

# This is to describe a character's race which is the base
# class for Dungeons and Dragons
class CharacterRace

  # These are the possible racial traits
  attr_accessor :name, :gender, :age
  attr_accessor :ability_score_increase, :alignment
  attr_accessor :size, :speed, :languages


end
