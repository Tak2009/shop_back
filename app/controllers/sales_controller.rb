class SalesController < ApplicationController

    def index
        sales = Sale.all
        render json: sales, include: [:bicycle]
    end

    def show
        sale = Sale.find_by(id: params[:id])
        render json: sale.to_json(include: [:bicycle])
    end

    private

	def sale_params
		params.require(:sale).permit!
	end

end
