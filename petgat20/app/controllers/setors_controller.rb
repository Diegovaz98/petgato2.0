class SetorsController < ApplicationController
  before_action :set_setor, only: [:show, :update, :destroy]

  # GET /setors
  def index
    @setors = Setor.all

    render json: @setors
  end

  # GET /setors/1
  def show
    render json: @setor
  end

  # POST /setors
  def create
    @setor = Setor.new(setor_params)

    if @setor.save
      render json: @setor, status: :created, location: @setor
    else
      render json: @setor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /setors/1
  def update
    if @setor.update(setor_params)
      render json: @setor
    else
      render json: @setor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /setors/1
  def destroy
    @setor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setor
      @setor = Setor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def setor_params
      params.fetch(:setor, {})
    end
end
