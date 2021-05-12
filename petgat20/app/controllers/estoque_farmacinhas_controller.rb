class EstoqueFarmacinhasController < ApplicationController
  before_action :set_estoque_farmacinha, only: [:show, :update, :destroy]

  # GET /estoque_farmacinhas
  def index
    @estoque_farmacinhas = EstoqueFarmacinha.all

    render json: @estoque_farmacinhas
  end

  # GET /estoque_farmacinhas/1
  def show
    render json: @estoque_farmacinha
  end

  # POST /estoque_farmacinhas
  def create
    @estoque_farmacinha = EstoqueFarmacinha.new(estoque_farmacinha_params)

    if @estoque_farmacinha.save
      render json: @estoque_farmacinha, status: :created, location: @estoque_farmacinha
    else
      render json: @estoque_farmacinha.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estoque_farmacinhas/1
  def update
    if @estoque_farmacinha.update(estoque_farmacinha_params)
      render json: @estoque_farmacinha
    else
      render json: @estoque_farmacinha.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estoque_farmacinhas/1
  def destroy
    @estoque_farmacinha.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estoque_farmacinha
      @estoque_farmacinha = EstoqueFarmacinha.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estoque_farmacinha_params
      params.fetch(:estoque_farmacinha, {})
    end
end
