When /^I create seeds$/ do
  Cursoacademico.create!(:name => "2012/2013")
  Laboratorio.create!(:name => "Laboratorio 1.1", :description => "Lab 1.1")
end

