class VacinasController < ApplicationController
  before_action :set_vacina, only: [:show, :update, :destroy]

  # GET /vacinas
  def index
    @vacinas = Vacina.all

    render json: @vacinas
  end

  # GET /vacinas/1
  def show
    render json: @vacina
  end

  # POST /vacinas
  def create
    @vacina = Vacina.new(vacina_params)

    if @vacina.save
      render json: @vacina, status: :created, location: @vacina
    else
      render json: @vacina.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vacinas/1
  def update
    if @vacina.update(vacina_params)
      render json: @vacina
    else
      render json: @vacina.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vacinas/1
  def destroy
    @vacina.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacina
      @vacina = Vacina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vacina_params
      params.fetch(:vacina, {})
    end
end
