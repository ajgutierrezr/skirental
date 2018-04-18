class TerminosController < ApplicationController
  before_action :set_termino, only: [:show, :edit, :update, :destroy]

  # GET /terminos
  # GET /terminos.json
  def index
    @terminos = Termino.all
  end

  # GET /terminos/1
  # GET /terminos/1.json
  def show
  end

  # GET /terminos/new
  def new
    @termino = Termino.new
  end

  # GET /terminos/1/edit
  def edit
  end

  # POST /terminos
  # POST /terminos.json
  def create
    @termino = Termino.new(termino_params)

    respond_to do |format|
      if @termino.save
        format.html { redirect_to @termino, notice: 'Termino was successfully created.' }
        format.json { render :show, status: :created, location: @termino }
      else
        format.html { render :new }
        format.json { render json: @termino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminos/1
  # PATCH/PUT /terminos/1.json
  def update
    respond_to do |format|
      if @termino.update(termino_params)
        format.html { redirect_to @termino, notice: 'Termino was successfully updated.' }
        format.json { render :show, status: :ok, location: @termino }
      else
        format.html { render :edit }
        format.json { render json: @termino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminos/1
  # DELETE /terminos/1.json
  def destroy
    @termino.destroy
    respond_to do |format|
      format.html { redirect_to terminos_url, notice: 'Termino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_termino
      @termino = Termino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def termino_params
      params.fetch(:termino, {})
    end
end
