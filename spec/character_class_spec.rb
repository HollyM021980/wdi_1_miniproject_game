require_relative 'spec_helper'
require_relative '../character_class'

describe CharacterClass do

  char_class = CharacterClass.new

  it "should generate a CharacterClass object" do
    expect { char_class.should should be_an_instance_of  CharacterClass }
  end

  it "should generate an array of class names" do
    class_names = char_class.assemble_class_names
    expect {class_names.should be_an_instance_of Array}
    expect {class_names.should == ["Cleric", "Fighter", "Rogue", "Wizard"]}
  end
end
