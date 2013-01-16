class CursoacademicosController < ApplicationController
  # GET /cursoacademicos
  # GET /cursoacademicos.json
  def index
    @cursoacademicos = Cursoacademico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cursoacademicos }
    end
  end

  # GET /cursoacademicos/1
  # GET /cursoacademicos/1.json
  def show
    @cursoacademico = Cursoacademico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cursoacademico }
    end
  end

  # GET /cursoacademicos/new
  # GET /cursoacademicos/new.json
  def new
    @cursoacademico = Cursoacademico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cursoacademico }
    end
  end

  # GET /cursoacademicos/1/edit
  def edit
    @cursoacademico = Cursoacademico.find(params[:id])
  end

  # POST /cursoacademicos
  # POST /cursoacademicos.json
  def create
    @cursoacademico = Cursoacademico.new(params[:cursoacademico])

    respond_to do |format|
      if @cursoacademico.save
        format.html { redirect_to @cursoacademico, notice: 'Cursoacademico was successfully created.' }
        format.json { render json: @cursoacademico, status: :created, location: @cursoacademico }
      else
        format.html { render action: "new" }
        format.json { render json: @cursoacademico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cursoacademicos/1
  # PUT /cursoacademicos/1.json
  def update
    @cursoacademico = Cursoacademico.find(params[:id])

    respond_to do |format|
      if @cursoacademico.update_attributes(params[:cursoacademico])
        format.html { redirect_to @cursoacademico, notice: 'Cursoacademico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cursoacademico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursoacademicos/1
  # DELETE /cursoacademicos/1.json
  def destroy
    @cursoacademico = Cursoacademico.find(params[:id])
    @cursoacademico.destroy

    respond_to do |format|
      format.html { redirect_to cursoacademicos_url }
      format.json { head :no_content }
    end
  end
end
