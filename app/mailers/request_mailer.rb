class RequestMailer < ActionMailer::Base
  default from: "ccalculo@um.es"

  def request_created(request)
    mail(:to => request.owner.username, :subject => "Peticion creada")
  end
end
