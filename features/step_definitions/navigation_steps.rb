When /^I go to (.+)? page$/ do |page_name|
   visit path_to(page_name)
end

When /^I click in Guardar$/ do
  click_button('Guardar')
end

When /^I click in New$/ do
  click_button('Create')
end

