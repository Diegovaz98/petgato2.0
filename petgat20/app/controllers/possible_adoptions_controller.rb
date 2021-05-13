class PossibleAdoptionsController < ApplicationController
  before_action :set_possible_adoption, only: [:show, :update, :destroy]

  # GET /possible_adoptions
  def index
    @possible_adoptions = PossibleAdoption.all

    render json: @possible_adoptions
  end

  # GET /possible_adoptions/1
  def show
    render json: @possible_adoption
  end

  # POST /possible_adoptions
  def create
    @possible_adoption = PossibleAdoption.new(possible_adoption_params)

    if @possible_adoption.save
      render json: @possible_adoption, status: :created, location: @possible_adoption
    else
      render json: @possible_adoption.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /possible_adoptions/1
  def update
    if @possible_adoption.update(possible_adoption_params)
      render json: @possible_adoption
    else
      render json: @possible_adoption.errors, status: :unprocessable_entity
    end
  end

  # DELETE /possible_adoptions/1
  def destroy
    @possible_adoption.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possible_adoption
      @possible_adoption = PossibleAdoption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def possible_adoption_params
      params.require(:possible_adoption).permit(:id_animal, :id_pessoa)
    end
end
