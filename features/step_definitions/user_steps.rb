When /^I am a teacher of the Faculty$/ do
  @pepito = User.new(:username => "pepito@um.es")   
end

Then /^I receive an email$/ do
    pending # express the regexp above with the code you wish you had
end

