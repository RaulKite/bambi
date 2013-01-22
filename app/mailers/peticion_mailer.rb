class PeticionMailer < ActionMailer::Base
  default from: "ccalculo@um.es"

  def peticionrealizada_email(peticion)
    @peticion = peticion
    mail(:to => peticion.user.username, 
         :bcc => "ccalculo@um.es",
         :subject => "Peticion de Instalacion de software")
  end
end
