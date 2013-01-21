When /^I fill Peticion fields$/ do
  select  '2012/2013', :from  => 'peticionsoftware_cursoacademico_id'
  fill_in 'peticionsoftware_titulacion', :with => "titulacion"
  select  'Primero', :from => 'peticionsoftware_curso'
  fill_in 'peticionsoftware_asignatura', :with  => "Calculo"
  select  'Windows', :from => 'peticionsoftware_sistemaoperativo'
  fill_in 'peticionsoftware_software', :with  => "R 11.4"
  fill_in 'peticionsoftware_dondeobtener', :with => "http://www.um.es"
  fill_in 'peticionsoftware_fechacomienzo', :with => "2012-02-25"
  fill_in 'peticionsoftware_comentario', :with  => "Comentario"
  find(:css, "#peticionsoftware_laboratorio_ids_").set(true)


end

Then /^A "(.*?)" is created$/ do |arg1|
  page.should have_content("Peticion de Software creada correctamente.")
end

When /^I create a new Peticion de Software$/ do
  Peticionsoftware.create!(
      :user =>  @pepito,
      :cursoacademico_id => 1,
      :title        => "R", 
      :titulacion   => "Grado en Informatica", 
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechacomienzo => 1.month.from_now,
      :fechayhora  => Time.now,
      :laboratorio_ids => [Laboratorio.create(:name => "LAb 1", :description  => "LAboratorio1").id, Laboratorio.create(:name => "lab 2", :description => "LAboratorio 2").id]
  ) 
end

Then /I see my "Peticion de Software"/ do
  page.should have_content("Grado en Informatica")
  page.should have_content("Calculo")
  page.should have_content("R version 11.4")
end
