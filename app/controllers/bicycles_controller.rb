class BicyclesController < ApplicationController

    def index
        bicycles = Sale.all
        render json: bicycles
    end

end
