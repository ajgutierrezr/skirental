class InformacionsController < ApplicationController
  before_action :set_informacion, only: [:show, :edit, :update, :destroy]

  # GET /informacions
  # GET /informacions.json
  def index
    @informacions = Informacion.all
  end

  # GET /informacions/1
  # GET /informacions/1.json
  def show
  end

  # GET /informacions/new
  def new
    @informacion = Informacion.new
  end

  # GET /informacions/1/edit
  def edit
  end

  # POST /informacions
  # POST /informacions.json
  def create
    @informacion = Informacion.new(informacion_params)

    respond_to do |format|
      if @informacion.save
        format.html { redirect_to @informacion, notice: 'Informacion was successfully created.' }
        format.json { render :show, status: :created, location: @informacion }
      else
        format.html { render :new }
        format.json { render json: @informacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacions/1
  # PATCH/PUT /informacions/1.json
  def update
    respond_to do |format|
      if @informacion.update(informacion_params)
        format.html { redirect_to @informacion, notice: 'Informacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacion }
      else
        format.html { render :edit }
        format.json { render json: @informacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacions/1
  # DELETE /informacions/1.json
  def destroy
    @informacion.destroy
    respond_to do |format|
      format.html { redirect_to informacions_url, notice: 'Informacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacion
      @informacion = Informacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacion_params
      params.fetch(:informacion, {})
    end
end
