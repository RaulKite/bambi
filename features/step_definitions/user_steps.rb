When /^I am an authenticated teacher of the Faculty$/ do
  @pepito = FactoryGirl.create(:user)
  login_as(@pepito, :scope => "user")
end

Then /^I receive an email$/ do
  @email = ActionMailer::Base.deliveries.first
  @email.from.should == ['ccalculo@um.es']
  @email.to.should == ['pepito@um.es']
#  @email.body.should include("Peticion para Centro de Calculo creada")
end




