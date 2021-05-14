class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :update, :destroy]

  # GET /animals
  def index
    @animals = Animal.all

    render json: @animals
  end

  # GET /animals/1
  def show
    render json: @animal
  end

  # POST /animals
  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      render json: @animal, status: :created, location: @animal
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animals/1
  def update
    if @animal.update(animal_params)
      render json: @animal
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /animals/1
  def destroy
    @animal.destroy
  end

  def animals_adopted
    @animals = Animal.find_by_sql("select * from animals where adotado = true")
    render json: @animals

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animal_params
      params.require(:animal).permit(:nome, :idade, :data_chegada, :adotado, :raca, :id_setor, :id_tipo_animal)
    end
end
