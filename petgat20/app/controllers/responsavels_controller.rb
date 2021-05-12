class ResponsavelsController < ApplicationController
  before_action :set_responsavel, only: [:show, :update, :destroy]

  # GET /responsavels
  def index
    @responsavels = Responsavel.all

    render json: @responsavels
  end

  # GET /responsavels/1
  def show
    render json: @responsavel
  end

  # POST /responsavels
  def create
    @responsavel = Responsavel.new(responsavel_params)

    if @responsavel.save
      render json: @responsavel, status: :created, location: @responsavel
    else
      render json: @responsavel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responsavels/1
  def update
    if @responsavel.update(responsavel_params)
      render json: @responsavel
    else
      render json: @responsavel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responsavels/1
  def destroy
    @responsavel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsavel
      @responsavel = Responsavel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def responsavel_params
      params.fetch(:responsavel, {})
    end
end
