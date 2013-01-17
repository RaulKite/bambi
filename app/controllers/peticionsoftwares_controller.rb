class PeticionsoftwaresController < ApplicationController
  # GET /peticionsoftwares
  # GET /peticionsoftwares.json
  def index
    @peticionsoftwares = Peticionsoftware.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @peticionsoftwares }
    end
  end

  # GET /peticionsoftwares/1
  # GET /peticionsoftwares/1.json
  def show
    @peticionsoftware = Peticionsoftware.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @peticionsoftware }
    end
  end

  # GET /peticionsoftwares/new
  # GET /peticionsoftwares/new.json
  def new
    @peticionsoftware = Peticionsoftware.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @peticionsoftware }
    end
  end

  # GET /peticionsoftwares/1/edit
  def edit
    @peticionsoftware = Peticionsoftware.find(params[:id])
  end

  # POST /peticionsoftwares
  # POST /peticionsoftwares.json
  def create
    @peticionsoftware = Peticionsoftware.new(params[:peticionsoftware])
    @peticionsoftware.user = current_user
    @peticionsoftware.fechayhora = Time.now

    respond_to do |format|
      if @peticionsoftware.save
        format.html { redirect_to @peticionsoftware, notice: 'Peticion de Software creada correctamente. En unos momentos recibira un correo con la confirmacion.' }
        format.json { render json: @peticionsoftware, status: :created, location: @peticionsoftware }
      else
        format.html { render action: "new" }
        format.json { render json: @peticionsoftware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /peticionsoftwares/1
  # PUT /peticionsoftwares/1.json
  def update
    @peticionsoftware = Peticionsoftware.find(params[:id])

    respond_to do |format|
      if @peticionsoftware.update_attributes(params[:peticionsoftware])
        format.html { redirect_to @peticionsoftware, notice: 'Peticionsoftware was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @peticionsoftware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peticionsoftwares/1
  # DELETE /peticionsoftwares/1.json
  def destroy
    @peticionsoftware = Peticionsoftware.find(params[:id])
    @peticionsoftware.destroy

    respond_to do |format|
      format.html { redirect_to peticionsoftwares_url }
      format.json { head :no_content }
    end
  end
end
