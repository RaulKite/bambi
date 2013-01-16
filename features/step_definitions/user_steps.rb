When /^I am an authenticated teacher of the Faculty$/ do
  user = FactoryGirl.create(:user)
  login_as(user, :scope => "user")
end

Then /^I receive an email$/ do
  @email = ActionMailer::Base.deliveries.first
  @email.from.should == ['ccalculo@um.es']
  @email.to.should == ['pepito@um.es']
  @email.body.should include("Peticion para Centro de Calculo creada")
end




