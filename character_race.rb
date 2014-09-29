require 'pry'

# This is to describe a character's race which is the base
# class for Dungeons and Dragons

RACES = { "Dwarf" => {subraces: ["Hill Dwarf", "Mountain Dwarf"]},
          "Elf" => {subraces: ["High Elf", "Wood Elf"]},
          "Halfling" => {subraces:[]}
        }
class CharacterRace

  # These are the possible racial traits
  attr_accessor :name, :gender, :age
  attr_accessor :weapons, :armor

  # Input:  none
  # Return: Array of class name strings
  def assemble_race_names
    race_names = []
    RACES.each_key do | key |
      if RACES[key][:subraces].empty?
        race_names << key
      else
        RACES[key][:subraces].each { |subrace| race_names << subrace }
      end
    end
    race_names
  end

end
