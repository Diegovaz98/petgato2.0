class EstoqueRacaosController < ApplicationController
  before_action :set_estoque_racao, only: [:show, :update, :destroy]

  # GET /estoque_racaos
  def index
    @estoque_racaos = EstoqueRacao.all

    render json: @estoque_racaos
  end

  # GET /estoque_racaos/1
  def show
    render json: @estoque_racao
  end

  # POST /estoque_racaos
  def create
    @estoque_racao = EstoqueRacao.new(estoque_racao_params)

    if @estoque_racao.save
      render json: @estoque_racao, status: :created, location: @estoque_racao
    else
      render json: @estoque_racao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estoque_racaos/1
  def update
    if @estoque_racao.update(estoque_racao_params)
      render json: @estoque_racao
    else
      render json: @estoque_racao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estoque_racaos/1
  def destroy
    @estoque_racao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estoque_racao
      @estoque_racao = EstoqueRacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estoque_racao_params
      params.fetch(:estoque_racao, {})
    end
end
