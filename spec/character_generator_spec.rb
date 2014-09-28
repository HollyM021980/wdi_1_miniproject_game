require_relative 'spec_helper'
require_relative '../character_generator'


describe CharacterGenerator do

  it "should generate a CharacterGenerator object" do
    char_generator = CharacterGenerator.new

    expect { char_race.should be_a CharacterGenerator }
  end

end
