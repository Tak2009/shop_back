class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all
        render json: purchases, include: [:bicycle]
    end

    def show
        purchase = Purchase.find_by(id: params[:id])
        render json: purchase.to_json(include: [:bicycle])
    end

    def create
        purchase = Purchase.new(purchase_params)
        purchase.save
    end

    def update
        purchase = Purchase.find(params[:id])
        purchase.update(purchase_params)
    end
    
    def destroy
        Purchase.destroy(params[:id])
    end

    private

	def purchase_params
		params.require(:purchase).permit!
	end

end
