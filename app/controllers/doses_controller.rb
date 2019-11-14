class DosesController < ApplicationController
    def new
        @doses = Dose.new
    end

    def create
        @doses = Dose.new(params[:Cocktail_id])
    end

    def destroy
        @doses = Dose.delete
    end
end
