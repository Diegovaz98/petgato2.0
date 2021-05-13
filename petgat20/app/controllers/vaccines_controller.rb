class VaccinesController < ApplicationController
  before_action :set_vaccine, only: [:show, :update, :destroy]

  # GET /vaccines
  def index
    @vaccines = Vaccine.all

    render json: @vaccines
  end

  # GET /vaccines/1
  def show
    render json: @vaccine
  end

  # POST /vaccines
  def create
    @vaccine = Vaccine.new(vaccine_params)

    if @vaccine.save
      render json: @vaccine, status: :created, location: @vaccine
    else
      render json: @vaccine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vaccines/1
  def update
    if @vaccine.update(vaccine_params)
      render json: @vaccine
    else
      render json: @vaccine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vaccines/1
  def destroy
    @vaccine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccine
      @vaccine = Vaccine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaccine_params
      params.require(:vaccine).permit(:nome, :cod_vacina)
    end
end
