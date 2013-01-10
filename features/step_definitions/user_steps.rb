When /^I am a teacher of the Faculty$/ do
  @pepito = User.new(:username => "pepito@um.es")   
end

Then /^I receive an email$/ do
  @email = ActionMailer::Base.deliveries.first
  @email.from.should == ['ccalculo@um.es']
  @email.to.should == ['pepito@um.es']
  @email.body.should include("Peticion para Centro de Calculo creada")
#   RequestMailer.should_receive(:request_created)
end

