When /^I create a request$/ do
    Request.create!(:title  => "Recopy lab 1.1", :description => "All pcs ", :date => Time.now, :owner  => @pepito)
end

