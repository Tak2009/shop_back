class PurchasessimulationsController < ApplicationController

    def index
        purchasessimulations = Purchasessimulation.all
        render json: purchasessimulations, include: [:bicycle]
    end

    def show
        purchasessimulation = Purchasessimulation.find_by(id: params[:id])
        render json: purchasessimulation.to_json(include: [:bicycle])
    end

    def create
        purchasessimulation = Purchasessimulation.new(purchasessimulation_params)
        purchasessimulation.save
    end

    def update
        purchasessimulation = Purchasessimulation.find(params[:id])
        purchasessimulation.update(purchasessimulation_params)
    end
    
    def destroy
        Purchasessimulation.destroy(params[:id])
    end

    private

	def purchasessimulation_params
		params.require(:purchasessimulation).permit!
	end

end
