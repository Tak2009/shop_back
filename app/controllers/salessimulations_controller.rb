class SalessimulationsController < ApplicationController

    def index
        salessimulations = Salessimulation.all
        render json: salessimulations, include: [:bicycle]
    end

    def show
        salessimulation = Salessimulation.find_by(id: params[:id])
        render json: salessimulation.to_json(include: [:bicycle])
    end

    def create
        salessimulation = Salessimulation.new(salessimulation_params)
        salessimulation.save
    end

    def update
        salessimulation = Salessimulation.find(params[:id])
        salessimulation.update(salessimulation_params)
    end
    
    def destroy
        Salessimulation.destroy(params[:id])
    end

    private

	def salessimulation_params
		params.require(:salessimulation).permit!
	end

end
