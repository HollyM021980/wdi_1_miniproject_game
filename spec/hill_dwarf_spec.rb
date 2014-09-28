require_relative 'spec_helper'
require_relative '../hill_dwarf'


describe HillDwarf do

  it "should generate a Hill Dwarf object" do
    char_race = HillDwarf.new

    expect { char_race.should be_a HillDwarf }
  end

end
