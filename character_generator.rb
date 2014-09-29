require 'pry'
require_relative 'character_class'
require_relative 'character_race'

# This class will be the main logic to get user input
# display results of generating a character to the user
# This is a hash of the classes and their attributes


class CharacterGenerator

  # Display a menu string and get the character class
  #   the user wants for their character.
  # Will exit the program if the user enters "quit"
  # Input: none
  # Return: String containing character class
  def select_character_class
    char_classes = CharacterClass.new
    names = char_classes.assemble_class_names
    menu_str = gen_menu_str("class", names)
    time_to_exit = false
    #TODO: need to add validation
    begin
      puts menu_str
      class_name = gets.chomp
      exit if class_name == "quit"
      time_to_exit = true if names.include?(class_name)
    end until time_to_exit
    return class_name
  end

  # This generates a generic menu string to display to the user
  # Input: Array of names, String specifying "race" or "class"
  # Return: String for display
  def gen_menu_str(type, names)
    #TODO: need some error checking on type & names
    names_str = ""
    names_str = names.each { |name| names_str << "#{name} " }
    menu_str = "\nPlease enter the #{type} for your character: "
    menu_str += "\n(#{names_str})"
    menu_str += "\nOr enter 'quit' to exit"
    menu_str += "\n==> "
    menu_str
  end


  # Display a menu string and get the character race
  #   the user wants for their character.
  # Will exit the program if the user enters "quit"
  # Input: none
  # Return: String containing character race
  def select_character_race
    char_races = CharacterRace.new
    names = char_races.assemble_race_names
    menu_str = gen_menu_str("race", names)
    time_to_exit = false
    #TODO: need to add validation
    begin
      print menu_str
      race_name = gets.chomp
      exit if race_name == "quit"
      time_to_exit = true if names.include?(race_name)
    end until time_to_exit
    return race_name
  end

  # Main functionality to generate a character
  # Input: none
  # Return: none.  Simply creates character objects.
  def generate_character
    char_class = select_character_class
    puts "\n\nCool!! For class, you've chosen: #{char_class}\n\n"
    char_race = select_character_race
    puts "\nCongratulations!! For race, you've chosen: #{char_race}\n\n"
  end
end

# Just to simply kick things off!!
generate = CharacterGenerator.new
generate.generate_character


