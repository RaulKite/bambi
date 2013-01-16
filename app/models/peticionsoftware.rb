class Peticionsoftware < ActiveRecord::Base
  belongs_to :user
  belongs_to :cursoacademico
  attr_accessible :asignatura, :comentario, :curso, :dondeobtener, :fechacomienzo, :fechayhora, :sistemaoperativo, :software, :title, :titulacion, :user, :cursoacademico

  validates :user, :presence => true
  validates :cursoacademico, :presence => true
  validates :title, :presence => true
  validates :titulacion, :presence => true
  validates :curso, :presence => true
  validates :asignatura, :presence => true
  validates :software, :presence => true
  validates :sistemaoperativo, :presence => true
  validates :fechayhora, :presence => true
  validates :fechacomienzo, :presence => true
end
