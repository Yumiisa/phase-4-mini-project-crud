class SpicesController < ApplicationController
     def index
        spices=Spice.all
        render json: spices
    end
    def create
        spice=Spice.create(spice_params)
        render json: spice
    end
    def update
        spice=Spice.find(params[:id])
        if spice
            spice.update(spice_params)
            render json: spice
        else
        render json:{error: 'spice not found'}, status: :unprocessable_entity

    end
    spice=Spice.find(params[:id])
     if spice 
        spice.destroy
        render json: spice
    private
    def spice_params
        params.permit(:title, :image, :description, :notes ,:rating)
    end
end
