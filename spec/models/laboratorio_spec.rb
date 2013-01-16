require 'spec_helper'

describe Laboratorio do

  def valid_attributes
    {
      :name         => "Laboratorio 1.1", 
      :description  => "Tiene 24 ordenadores"
    }
  end

  it "is valid with valid attributes" do
    laboratorio = Laboratorio.new valid_attributes
    laboratorio.should be_valid
  end

  it "is invalid without name" do
    laboratorio = Laboratorio.new :description => "24 pcs"
    laboratorio.should_not be_valid
  end


  it "is invalid without description" do
    laboratorio = Laboratorio.new :name => "1-1"
    laboratorio.should_not be_valid
  end


end
