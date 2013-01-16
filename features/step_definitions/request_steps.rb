When /^I create a request$/ do
    Request.create!(:title  => "Recopy lab 1.1", :description => "All pcs ", :date => Time.now, :owner  => @pepito)
end


When /^I fill request fields$/ do
  fill_in 'title', :with => 'Title'
  fill_in 'description', :with => 'Description'
end

Then /^A request is created$/ do
  page.should have_content("Peticion creada correctamente")
end





