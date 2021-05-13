class MedicineStocksController < ApplicationController
  before_action :set_medicine_stock, only: [:show, :update, :destroy]

  # GET /medicine_stocks
  def index
    @medicine_stocks = MedicineStock.all

    render json: @medicine_stocks
  end

  # GET /medicine_stocks/1
  def show
    render json: @medicine_stock
  end

  # POST /medicine_stocks
  def create
    @medicine_stock = MedicineStock.new(medicine_stock_params)

    if @medicine_stock.save
      render json: @medicine_stock, status: :created, location: @medicine_stock
    else
      render json: @medicine_stock.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medicine_stocks/1
  def update
    if @medicine_stock.update(medicine_stock_params)
      render json: @medicine_stock
    else
      render json: @medicine_stock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medicine_stocks/1
  def destroy
    @medicine_stock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine_stock
      @medicine_stock = MedicineStock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicine_stock_params
      params.require(:medicine_stock).permit(:nome, :validade, :quantidade, :doenca)
    end
end
