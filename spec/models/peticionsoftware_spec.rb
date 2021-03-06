require 'spec_helper'

describe Peticionsoftware do

  def valid_attributes
    {
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R", 
      :titulacion   => "Grado en Informatica", 
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id
    }
  end

  it "is valid with valid attributes" do
    peticionsoftware = Peticionsoftware.new valid_attributes 
    peticionsoftware.should be_valid
  end

  it "is invalid without user" do
    peticionsoftware = Peticionsoftware.new(
      :cursoacademico_id => 1,
      :title        => "R", 
      :titulacion   => "Grado en Informatica", 
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end


  it "is invalid without curso academico" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :title        => "R", 
      :titulacion   => "Grado en Informatica", 
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is valid without title" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :titulacion   => "Grado en Informatica", 
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should be_valid
  end

  it "is invalid without titulacion" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is invalid without curso" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :titulacion   => "Grado en Informatica",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is invalid without asignatura" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :titulacion   => "Grado en Informatica",
      :curso        => "Primero",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is invalid without software" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :titulacion   => "Grado en Informatica",
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is invalid without sistemaoperativo" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :titulacion   => "Grado en Informatica",
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 4.12",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is invalid without fechayhora" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :titulacion   => "Grado en Informatica",
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 4.12",
      :sistemaoperativo => "Windows", 
      :fechacomienzo => 1.month.from_now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "is invalid without fechacomienzo" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R",
      :titulacion   => "Grado en Informatica",
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 4.12",
      :sistemaoperativo => "Windows", 
      :fechayhora     => Time.now,
      :dondeobtener   => "http://www.r-project.org",
      :comentario   => "Compilar con builder c++",
      :laboratorio_ids  => FactoryGirl.create(:laboratorio).id)
    peticionsoftware.should_not be_valid
  end

  it "can be installed in three laboratorios" do
    labs = 2.times.map { FactoryGirl.create(:laboratorio)}
    peticion = Peticionsoftware.create valid_attributes
    peticion.laboratorios << labs
    peticion.laboratorios.count.should == 3
  end

  it "is installed in one laboratorio at least" do
    peticionsoftware = Peticionsoftware.new(
      :user         => FactoryGirl.create(:user),
      :cursoacademico_id => 1,
      :title        => "R", 
      :titulacion   => "Grado en Informatica", 
      :curso        => "Primero",
      :asignatura   => "Calculo",
      :software     => "R version 11.4",
      :sistemaoperativo => "Windows",
      :fechayhora   => Time.now,
      :fechacomienzo => 1.month.from_now
    )
    peticionsoftware.should_not be_valid    
  end


end
