require_relative 'spec_helper'
require_relative '../character_class'

describe CharacterClass do

  it "should generate a CharacterClass object" do
    char_race = CharacterClass.new

    expect { char_race.should be_a CharacterClass }
  end

end
