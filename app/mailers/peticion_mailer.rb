class PeticionMailer < ActionMailer::Base
  default from: "ccalculo@um.es"

  def peticionrealizada_email(peticion)
    mail(:to => peticion.user.username, :subject => "Peticion de Instalacion de software")
  end
end
