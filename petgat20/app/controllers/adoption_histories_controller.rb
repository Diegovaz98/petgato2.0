class AdoptionHistoriesController < ApplicationController
  before_action :set_adoption_history, only: [:show, :update, :destroy]

  # GET /adoption_histories
  def index
    @adoption_histories = AdoptionHistory.all

    render json: @adoption_histories
  end

  # GET /adoption_histories/1
  def show
    render json: @adoption_history
  end

  # POST /adoption_histories
  def create
    @adoption_history = AdoptionHistory.new(adoption_history_params)

    if @adoption_history.save
      render json: @adoption_history, status: :created, location: @adoption_history
    else
      render json: @adoption_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adoption_histories/1
  def update
    if @adoption_history.update(adoption_history_params)
      render json: @adoption_history
    else
      render json: @adoption_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adoption_histories/1
  def destroy
    @adoption_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption_history
      @adoption_history = AdoptionHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adoption_history_params
      params.require(:adoption_history).permit(:nome, :data, :condicao_animal, :descricao, :id_animal, :id_pessoa)
    end
end
