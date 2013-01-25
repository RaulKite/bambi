class Peticionsoftware < ActiveRecord::Base
  belongs_to :user
  belongs_to :cursoacademico
  has_and_belongs_to_many :laboratorios

  attr_accessible :asignatura, :comentario, :curso, :dondeobtener, :fechacomienzo, :fechayhora, :sistemaoperativo, :software, :title, :titulacion, :user, :cursoacademico_id, :laboratorio_ids

  validates :user, :presence => true
  validates :cursoacademico_id, :presence => true
  validates :titulacion, :presence => true
  validates :curso, :presence => true
  validates :asignatura, :presence => true
  validates :software, :presence => true
  validates :sistemaoperativo, :presence => true
  validates :fechayhora, :presence => true
  validates :fechacomienzo, :presence => true
  validates :laboratorio_ids, :presence => true

  after_create :send_mail_on_create
  after_update :send_mail_on_update


  def send_mail_on_create
    PeticionMailer.peticionrealizada_email(self).deliver
  end

  def send_mail_on_update
    PeticionMailer.peticionmodificada_email(self).deliver
  end

end
