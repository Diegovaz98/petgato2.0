class PossivelAdocaosController < ApplicationController
  before_action :set_possivel_adocao, only: [:show, :update, :destroy]

  # GET /possivel_adocaos
  def index
    @possivel_adocaos = PossivelAdocao.all

    render json: @possivel_adocaos
  end

  # GET /possivel_adocaos/1
  def show
    render json: @possivel_adocao
  end

  # POST /possivel_adocaos
  def create
    @possivel_adocao = PossivelAdocao.new(possivel_adocao_params)

    if @possivel_adocao.save
      render json: @possivel_adocao, status: :created, location: @possivel_adocao
    else
      render json: @possivel_adocao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /possivel_adocaos/1
  def update
    if @possivel_adocao.update(possivel_adocao_params)
      render json: @possivel_adocao
    else
      render json: @possivel_adocao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /possivel_adocaos/1
  def destroy
    @possivel_adocao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possivel_adocao
      @possivel_adocao = PossivelAdocao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def possivel_adocao_params
      params.fetch(:possivel_adocao, {})
    end
end
