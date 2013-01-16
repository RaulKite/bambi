require 'spec_helper'

describe Cursoacademico do


  def valid_attributes
    {
      :name         => "2012/2013" 
    }
  end

  it "is valid with valid attributes" do
    cursoacademico = Cursoacademico.new valid_attributes
    cursoacademico.should be_valid
  end

  it "is invalid without name" do
    cursoacademico = Cursoacademico.new 
    cursoacademico.should_not be_valid
  end

  it "is invalid if its name is duplicated" do
    Cursoacademico.create! valid_attributes
    cursoacademico = Cursoacademico.new valid_attributes
    cursoacademico.should_not be_valid
  end

end
