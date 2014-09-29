require 'pry'
require_relative 'character_class'

# This class will be the main logic to get user input
# display results of generating a character to the user
# This is a hash of the classes and their attributes


class CharacterGenerator

  def class_menu(names)
    names_str = ""
    names_str = names.each { |name| names_str += "#{name} " }
    menu_str = "Please enter the class for your character: "
    menu_str += "\n(#{names_str})"
    menu_str += "\nOr enter 'quit' to exit"
    menu_str
  end

  def select_character_class
    char_classes = CharacterClass.new
    names = char_classes.assemble_class_names
    menu_str = class_menu(names)
    time_to_exit = false
    binding.pry
    begin
      puts menu_str
      class_name = gets.chomp
      binding.pry
      exit if class_name == "quit"
      time_to_exit = true if names.include?(class_name)
    end until time_to_exit
    binding.pry
    return class_name
  end

  def generate_character
    char_class = select_character_class
    binding.pry
    puts "You've chosen the #{char_class} class"
  end
end

generate = CharacterGenerator.new
generate.generate_character


