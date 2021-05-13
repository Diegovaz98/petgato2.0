class VaccineCardsController < ApplicationController
  before_action :set_vaccine_card, only: [:show, :update, :destroy]

  # GET /vaccine_cards
  def index
    @vaccine_cards = VaccineCard.all

    render json: @vaccine_cards
  end

  # GET /vaccine_cards/1
  def show
    render json: @vaccine_card
  end

  # POST /vaccine_cards
  def create
    @vaccine_card = VaccineCard.new(vaccine_card_params)

    if @vaccine_card.save
      render json: @vaccine_card, status: :created, location: @vaccine_card
    else
      render json: @vaccine_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vaccine_cards/1
  def update
    if @vaccine_card.update(vaccine_card_params)
      render json: @vaccine_card
    else
      render json: @vaccine_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vaccine_cards/1
  def destroy
    @vaccine_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccine_card
      @vaccine_card = VaccineCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaccine_card_params
      params.require(:vaccine_card).permit(:id_animal, :id_vacina)
    end
end
