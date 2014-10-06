require_relative 'spec_helper'
require_relative '../hill_dwarf'


describe HillDwarf do

  it "should generate a Hill Dwarf object" do
    char_hill_dwarf = HillDwarf.new("Hill Dwarf", "Cleric")

    expect { char_hill_dwarf.should be_a HillDwarf }
  end

end
