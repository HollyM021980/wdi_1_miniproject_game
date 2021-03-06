require 'pry'

# This describes all of the common attributes of a Dungeons
# and Dragons character

MALE_NAMES = ["Adrik", "Alberich", "Baern", "Barendd", "Brottor", "Bruenor", "Dain", "Darrak", "Delg", "Eberk", "Einkil", "Fargrim", "Flint", "Gardain", "Harbek", "Kildrak", "Morgran", "Orsik", "Oskar", "Rangrim", "Rurik", "Taklinn", "Thoradin", "Thorin", "Tordek", "Traubon", "Travok", "Ulfgar", "Veit", "Vondal"]
FEMALE_NAMES = ["Amber", "Artin", "Audhild", "Bardryn", "Dagnal", "Diesa", "Eldeth", "Falkrunn", "Finellen", "Gunnloda", "Gurdis", "Helja", "Hlin", "Kathra", "Kristryd", "Ilde", "Liftrasa", "Mardred", "Riswynn", "Sannl", "Torbera", "Torgga", "Vistra"]
CLAN_NAMES = ["Balderk", "Battlehammer", "Brawnanvil", "Dankil", "Fireforge", "Frostbeard", "Gorunn", "Holderhek", "Ironfist", "Loderr", "Lutgehr", "Rumnaheim", "Strakeln", "Torunn", "Ungart"]

class Dwarf < CharacterRace

  # Set instance variables
  # Input: two Strings
  # Output: nil
  def initialize(race, char_class)
    @race = race
    @char_class = char_class
  end

  #
  def name_menu
    menu_str = "Please enter a name for your dwarf. Lots of options here!!"
    menu_str = "Female Names:\n"
    names_str = ""
    names.each { | name | names_str.empty? ? names_str << name : names_str << ", " << name }
    menu_str << names_str << ")"
    menu_str = "Male Names:\n"
    names_str = ""
    names.each { | name | names_str.empty? ? names_str << name : names_str << ", " << name }
    menu_str << names_str << ")"
    # binding.pry
    menu_str
  end
end
