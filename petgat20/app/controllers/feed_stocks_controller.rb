class FeedStocksController < ApplicationController
  before_action :set_feed_stock, only: [:show, :update, :destroy]

  # GET /feed_stocks
  def index
    @feed_stocks = FeedStock.all

    render json: @feed_stocks
  end

  # GET /feed_stocks/1
  def show
    render json: @feed_stock
  end

  # POST /feed_stocks
  def create
    @feed_stock = FeedStock.new(feed_stock_params)

    if @feed_stock.save
      render json: @feed_stock, status: :created, location: @feed_stock
    else
      render json: @feed_stock.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feed_stocks/1
  def update
    if @feed_stock.update(feed_stock_params)
      render json: @feed_stock
    else
      render json: @feed_stock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feed_stocks/1
  def destroy
    @feed_stock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_stock
      @feed_stock = FeedStock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_stock_params
      params.require(:feed_stock).permit(:quantidade, :marca, :nome, :id_tipo_animal, :kg)
    end
end
