class Peticionsoftware < ActiveRecord::Base
  belongs_to :user
  belongs_to :cursoacademico
  attr_accessible :asignatura, :cometario, :curso, :dondeobtener, :fechacomienzo, :fechayhora, :sistemaoperativo, :software, :title, :titulacion
end
