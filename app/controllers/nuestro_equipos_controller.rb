class NuestroEquiposController < ApplicationController
  before_action :set_nuestro_equipo, only: [:show, :edit, :update, :destroy]

  # GET /nuestro_equipos
  # GET /nuestro_equipos.json
  def index
    @nuestro_equipos = NuestroEquipo.all
  end

  # GET /nuestro_equipos/1
  # GET /nuestro_equipos/1.json
  def show
  end

  # GET /nuestro_equipos/new
  def new
    @nuestro_equipo = NuestroEquipo.new
  end

  # GET /nuestro_equipos/1/edit
  def edit
  end

  # POST /nuestro_equipos
  # POST /nuestro_equipos.json
  def create
    @nuestro_equipo = NuestroEquipo.new(nuestro_equipo_params)

    respond_to do |format|
      if @nuestro_equipo.save
        format.html { redirect_to @nuestro_equipo, notice: 'Nuestro equipo was successfully created.' }
        format.json { render :show, status: :created, location: @nuestro_equipo }
      else
        format.html { render :new }
        format.json { render json: @nuestro_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nuestro_equipos/1
  # PATCH/PUT /nuestro_equipos/1.json
  def update
    respond_to do |format|
      if @nuestro_equipo.update(nuestro_equipo_params)
        format.html { redirect_to @nuestro_equipo, notice: 'Nuestro equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @nuestro_equipo }
      else
        format.html { render :edit }
        format.json { render json: @nuestro_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nuestro_equipos/1
  # DELETE /nuestro_equipos/1.json
  def destroy
    @nuestro_equipo.destroy
    respond_to do |format|
      format.html { redirect_to nuestro_equipos_url, notice: 'Nuestro equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nuestro_equipo
      @nuestro_equipo = NuestroEquipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nuestro_equipo_params
      params.fetch(:nuestro_equipo, {})
    end
end
