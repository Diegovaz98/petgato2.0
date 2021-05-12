class CartaoDeVacinasController < ApplicationController
  before_action :set_cartao_de_vacina, only: [:show, :update, :destroy]

  # GET /cartao_de_vacinas
  def index
    @cartao_de_vacinas = CartaoDeVacina.all

    render json: @cartao_de_vacinas
  end

  # GET /cartao_de_vacinas/1
  def show
    render json: @cartao_de_vacina
  end

  # POST /cartao_de_vacinas
  def create
    @cartao_de_vacina = CartaoDeVacina.new(cartao_de_vacina_params)

    if @cartao_de_vacina.save
      render json: @cartao_de_vacina, status: :created, location: @cartao_de_vacina
    else
      render json: @cartao_de_vacina.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cartao_de_vacinas/1
  def update
    if @cartao_de_vacina.update(cartao_de_vacina_params)
      render json: @cartao_de_vacina
    else
      render json: @cartao_de_vacina.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cartao_de_vacinas/1
  def destroy
    @cartao_de_vacina.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartao_de_vacina
      @cartao_de_vacina = CartaoDeVacina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cartao_de_vacina_params
      params.fetch(:cartao_de_vacina, {})
    end
end
