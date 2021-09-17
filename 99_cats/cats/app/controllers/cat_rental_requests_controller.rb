class CatRentalRequestsController < ApplicationController

    def show
        @cat_rental = CatRentalRequest.find(params[:id])
        render :show

    end




end