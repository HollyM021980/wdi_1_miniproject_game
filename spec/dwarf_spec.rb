require_relative 'spec_helper'
require_relative '../dwarf'


describe Dwarf do

  it "should generate a Dwarf object" do
    char_race = Dwarf.new

    expect { char_race.should be_a Dwarf }
  end

end
