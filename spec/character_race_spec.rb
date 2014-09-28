require_relative 'spec_helper'
require_relative '../character_race'


describe CharacterRace do

  it "should generate a CharacterRace object" do
    char_race = CharacterRace.new

    expect { char_race.should be_a CharacterRace }

  end
end
