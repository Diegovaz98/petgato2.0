class FichaMedicasController < ApplicationController
  before_action :set_ficha_medica, only: [:show, :update, :destroy]

  # GET /ficha_medicas
  def index
    @ficha_medicas = FichaMedica.all

    render json: @ficha_medicas
  end

  # GET /ficha_medicas/1
  def show
    render json: @ficha_medica
  end

  # POST /ficha_medicas
  def create
    @ficha_medica = FichaMedica.new(ficha_medica_params)

    if @ficha_medica.save
      render json: @ficha_medica, status: :created, location: @ficha_medica
    else
      render json: @ficha_medica.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ficha_medicas/1
  def update
    if @ficha_medica.update(ficha_medica_params)
      render json: @ficha_medica
    else
      render json: @ficha_medica.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ficha_medicas/1
  def destroy
    @ficha_medica.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_medica
      @ficha_medica = FichaMedica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ficha_medica_params
      params.fetch(:ficha_medica, {})
    end
end
