When /^I go to (.+)? page$/ do |page_name|
   visit path_to(page_name)
end

When /^I click in Guardar$/ do
  click_button('Guardar')
end

Then /^I see my requests$/ do
    pending # express the regexp above with the code you wish you had
end
