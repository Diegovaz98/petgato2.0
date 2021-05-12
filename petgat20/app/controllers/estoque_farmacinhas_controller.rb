class EstoqueFarmacinhasController < ApplicationController

    def index
        @Estoque_Farmacinha = EstoqueFarmacinha.all
        render json: @Estoque_Farmacinha     
    end

end
