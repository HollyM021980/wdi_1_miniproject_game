require_relative 'spec_helper'
require_relative '../dwarf'


describe Dwarf do

  it "should generate a Dwarf object" do
    char_dwarf = Dwarf.new

    expect { char_dwarf.should be_a Dwarf }
  end

end
