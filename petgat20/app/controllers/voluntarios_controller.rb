class VoluntariosController < ApplicationController
  before_action :set_voluntario, only: [:show, :update, :destroy]

  # GET /voluntarios
  def index
    @voluntarios = Voluntario.all

    render json: @voluntarios
  end

  # GET /voluntarios/1
  def show
    render json: @voluntario
  end

  # POST /voluntarios
  def create
    @voluntario = Voluntario.new(voluntario_params)

    if @voluntario.save
      render json: @voluntario, status: :created, location: @voluntario
    else
      render json: @voluntario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /voluntarios/1
  def update
    if @voluntario.update(voluntario_params)
      render json: @voluntario
    else
      render json: @voluntario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /voluntarios/1
  def destroy
    @voluntario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario
      @voluntario = Voluntario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def voluntario_params
      params.fetch(:voluntario, {})
    end
end
