class ArriendosController < ApplicationController
  before_action :set_arriendo, only: [:show, :edit, :update, :destroy]

  # GET /arriendos
  # GET /arriendos.json
  def index
    @arriendos = Arriendo.all
  end

  # GET /arriendos/1
  # GET /arriendos/1.json
  def show
  end

  # GET /arriendos/new
  def new
    @arriendo = Arriendo.new
  end

  # GET /arriendos/1/edit
  def edit

  end

  def link(nror)
    @arriendo = Arriendo.find(params[nror])
    @arriendo.user_id = current_user.id
  end

  # POST /arriendos
  # POST /arriendos.json
  def create
    @arriendo = Arriendo.new(arriendo_params)

    respond_to do |format|
      if @arriendo.save
        format.html { redirect_to @arriendo, notice: 'Arriendo was successfully created.' }
        format.json { render :show, status: :created, location: @arriendo }
      else
        format.html { render :new }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end

    (1..(@arriendo.cantidad-1)).each do |arriendo2|
      arriendo2 = Arriendo.new
      arriendo2.talla = @arriendo.talla
      arriendo2.talla_parka = @arriendo.talla_parka
      arriendo2.talla_pantalon = @arriendo.talla_pantalon
      arriendo2.altura = @arriendo.altura
      arriendo2.fecha = @arriendo.fecha
      arriendo2.peso = @arriendo.peso
      arriendo2.nombre = @arriendo.nombre
      arriendo2.apellidop = @arriendo.apellidop
      arriendo2.apellidom = @arriendo.apellidom
      arriendo2.nropedido = @arriendo.nropedido
      arriendo2.cantidad = @arriendo.cantidad
      arriendo2.user_id = @arriendo.user_id
      arriendo2.equipo_id = @arriendo.equipo_id
      arriendo2.email = @arriendo.email
      arriendo2.dias = @arriendo.dias
      arriendo2.experience = @arriendo.experience
      arriendo2.document = @arriendo.document
      arriendo2.save
    end

  end

  # PATCH/PUT /arriendos/1
  # PATCH/PUT /arriendos/1.json
  def update
    respond_to do |format|
      if @arriendo.update(arriendo_params)
        format.html { redirect_to @arriendo, notice: 'Arriendo was successfully updated.' }
        format.json { render :show, status: :ok, location: @arriendo }
      else
        format.html { render :edit }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arriendos/1
  # DELETE /arriendos/1.json
  def destroy
    Arriendo.where(nropedido: @arriendo.nropedido).each do |eliminado|
      eliminado.destroy
    end
    respond_to do |format|
      format.html { redirect_to arriendos_url, notice: 'Arriendo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arriendo
      @arriendo = Arriendo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arriendo_params
      params.require(:arriendo).permit(:talla, :talla_parka, :talla_pantalon, :document, :altura, :nac, :peso, :nombre, :apellidop, :apellidom, :nropedido, :cantidad, :user_id, :equipo_id, :email, :fecha, :dias, :experience)
    end
end
