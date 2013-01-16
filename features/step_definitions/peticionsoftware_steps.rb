When /^I fill Peticion fields$/ do
  fill_in 'Title', :with => "titulo"

end

Then /^A "(.*?)" is created$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

