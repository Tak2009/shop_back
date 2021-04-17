class CashesController < ApplicationController

    def index
        cashes = Cash.all
        render json: cashes
    end

end
