class CatRentalRequestsController < ApplicationController

    def show
        @cat_rental = CatRentalRequest.find(params[:id])
        render :show
    end

    def new 
        @cat_rental = CatRentalRequest.new
        render :new
    end

    def create 
        @cat_rental = CatRentalRequest.new(rental_params)
        if @cat_rental.save
            redirect_to cat_rental_request_url(@cat_rental)
        else
            render json: @cat_rental.errors.full_messages, status: 422
        end


    end


    private
    def rental_params
        params.require(:cat_rental).permit(:cat_id, :start_date, :end_date)

    end



end