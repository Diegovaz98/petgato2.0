class AnimalTypesController < ApplicationController
  before_action :set_animal_type, only: [:show, :update, :destroy]

  # GET /animal_types
  def index
    @animal_types = AnimalType.all

    render json: @animal_types
  end

  # GET /animal_types/1
  def show
    render json: @animal_type
  end

  # POST /animal_types
  def create
    @animal_type = AnimalType.new(animal_type_params)

    if @animal_type.save
      render json: @animal_type, status: :created, location: @animal_type
    else
      render json: @animal_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animal_types/1
  def update
    if @animal_type.update(animal_type_params)
      render json: @animal_type
    else
      render json: @animal_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /animal_types/1
  def destroy
    @animal_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_type
      @animal_type = AnimalType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animal_type_params
      params.require(:animal_type).permit(:nome)
    end
end
