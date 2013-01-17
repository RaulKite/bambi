class Peticionsoftware < ActiveRecord::Base
  belongs_to :user
  belongs_to :cursoacademico
  attr_accessible :asignatura, :comentario, :curso, :dondeobtener, :fechacomienzo, :fechayhora, :sistemaoperativo, :software, :title, :titulacion, :user, :cursoacademico_id

  validates :user, :presence => true
  validates :cursoacademico_id, :presence => true
  validates :titulacion, :presence => true
  validates :curso, :presence => true
  validates :asignatura, :presence => true
  validates :software, :presence => true
  validates :sistemaoperativo, :presence => true
  validates :fechayhora, :presence => true
  validates :fechacomienzo, :presence => true

  after_create :send_mail

  def send_mail
    PeticionMailer.peticionrealizada_email(self).deliver
  end

end
