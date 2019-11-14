class CocktailsController < ApplicationController
    def index
        @cocktails = Cocktail.all
    end

    def show
        @cocktail = Cocktail.find(params[:id])
    end

    def new
        @cocktail = Cocktail.new
    end

    def create
        @Cocktail = Cocktail.new(params[:Cocktail])
        if @Cocktail.save
          redirect_to @Cocktail
        else
          render "new"
        end  
    end
 private
    def cocktail_params
        params.require(:cocktail).permit(:name)
    end

end
