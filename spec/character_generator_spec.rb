require_relative 'spec_helper'
require_relative '../character_generator'
require_relative '../character_class'

describe CharacterGenerator do

  generator = CharacterGenerator.new

  it "should generate a CharacterGenerator object" do
    expect { generator.should be_a CharacterGenerator }
  end

end
