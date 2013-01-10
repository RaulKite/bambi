require "spec_helper"

describe 'request' do
  
  def valid_attributes
    {
      :title        => "Change monitor", 
      :description  => "Monitor of pc3 in lab 2.7 is broken, please, change it!", 
      :owner        => FactoryGirl.create(:user),
      :date         => "2013-01-09 15:00:54 +0100" 
    }
  end

  it "is valid with valid attributes" do
    request = Request.new valid_attributes                                                 
    request.should be_valid
  end

  it "is invalid without owner" do
    request = Request.new :title => "Change monitor", :description => "Change it, plis!!", :date => Time.now
    request.should_not be_valid
  end

  it "is invalid without a title" do
    request = Request.new :owner => FactoryGirl.create(:user), :description => "Change it, plis!!", :date => Time.now
    request.should_not be_valid
  end

  it "is invalid without a description" do
    request = Request.new :owner => FactoryGirl.create(:user), :title => "Change monitor", :date => Time.now
    request.should_not be_valid
  end

  it "is invalid without a date" do
    request = Request.new :owner => FactoryGirl.create(:user), :description => "Change it, plis!!", :title => "Change monitor"
    request.should_not be_valid
  end

  it "has state" do
 
  end

end
