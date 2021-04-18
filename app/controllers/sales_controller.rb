class SalesController < ApplicationController

    def index
        sales = Sale.all
        render json: sales, include: [:bicycle]
    end

    def show
        sale = Sale.find_by(id: params[:id])
        render json: sale.to_json(include: [:bicycle])
    end

    def create
        sale = Sale.new(sale_params)
        sale.save
    end

    def update
        sale = Sale.find(params[:id])
        sale.update(sale_params)
    end
    
    def destroy
        Sale.destroy(params[:id])
    end

    private

	def sale_params
		params.require(:sale).permit!
	end

end
