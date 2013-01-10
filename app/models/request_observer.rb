class RequestObserver < ActiveRecord::Observer

  observe :request
  
  def after_create(request) 
    RequestMailer.request_created(request).deliver
  end

end
