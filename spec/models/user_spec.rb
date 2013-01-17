require 'spec_helper'

describe 'User' do

  it "raul@um.es is admin" do
    raul = FactoryGirl.build(:user, :username => 'raul@um.es')
    raul.should be_admin
  end

  it "pepito@um.es isn't admin" do
    pepito = FactoryGirl.create(:user)
    pepito.should_not be_admin
  end
end
