class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all
        render json: purchases, include: [:bicycle]
    end

    def show
        purchase = Purchase.find_by(id: params[:id])
        render json: purchase.to_json(include: [:bicycle])
    end

    private

	def purchase_params
		params.require(:purchase).permit!
	end

end
