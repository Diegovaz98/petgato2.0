class HistoricoAdocaosController < ApplicationController
  before_action :set_historico_adocao, only: [:show, :update, :destroy]

  # GET /historico_adocaos
  def index
    @historico_adocaos = HistoricoAdocao.all

    render json: @historico_adocaos
  end

  # GET /historico_adocaos/1
  def show
    render json: @historico_adocao
  end

  # POST /historico_adocaos
  def create
    @historico_adocao = HistoricoAdocao.new(historico_adocao_params)

    if @historico_adocao.save
      render json: @historico_adocao, status: :created, location: @historico_adocao
    else
      render json: @historico_adocao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /historico_adocaos/1
  def update
    if @historico_adocao.update(historico_adocao_params)
      render json: @historico_adocao
    else
      render json: @historico_adocao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /historico_adocaos/1
  def destroy
    @historico_adocao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico_adocao
      @historico_adocao = HistoricoAdocao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historico_adocao_params
      params.fetch(:historico_adocao, {})
    end
end
