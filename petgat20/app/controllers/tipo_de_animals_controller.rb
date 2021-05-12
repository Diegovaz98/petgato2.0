class TipoDeAnimalsController < ApplicationController
  before_action :set_tipo_de_animal, only: [:show, :update, :destroy]

  # GET /tipo_de_animals
  def index
    @tipo_de_animals = TipoDeAnimal.all

    render json: @tipo_de_animals
  end

  # GET /tipo_de_animals/1
  def show
    render json: @tipo_de_animal
  end

  # POST /tipo_de_animals
  def create
    @tipo_de_animal = TipoDeAnimal.new(tipo_de_animal_params)

    if @tipo_de_animal.save
      render json: @tipo_de_animal, status: :created, location: @tipo_de_animal
    else
      render json: @tipo_de_animal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_de_animals/1
  def update
    if @tipo_de_animal.update(tipo_de_animal_params)
      render json: @tipo_de_animal
    else
      render json: @tipo_de_animal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_de_animals/1
  def destroy
    @tipo_de_animal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_animal
      @tipo_de_animal = TipoDeAnimal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_de_animal_params
      params.fetch(:tipo_de_animal, {})
    end
end
