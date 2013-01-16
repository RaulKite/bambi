class RequestController < ApplicationController
  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end


  def create
    @request = Request.new(params[:request])
    @request.owner = current_user
    @request.date = Time.now
    
    if @request.save!
      redirect_to @request, :notice => "Peticion creada correctamente"
    else
      render :action => "new"
    end

  end
end
