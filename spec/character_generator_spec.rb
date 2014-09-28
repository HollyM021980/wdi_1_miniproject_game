require_relative 'spec_helper'
require_relative '../character_generator'


describe CharacterGenerator do

  it "should generate a CharacterGenerator object" do
    generator = CharacterGenerator.new

    expect { generator.should be_a CharacterGenerator }
  end

end
