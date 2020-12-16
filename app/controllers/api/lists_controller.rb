class Api::ListsController < ApplicationController

    def index
        lists = List.all
        render json: ListSerializer.new(lists)
    end

    def create
        list = List.new(list_params)
        if list.save 
            render json: list, status: :accepted
        else 
            render json: {errors: list.errors.full_messages}, status: :unprocessible_entity
        end
    end
    
    def destroy
        list = List.find_by(id: params[:id])
        list.destroy 

    end

    private
    def list_params
        params.require(:list).permit(:name, :color, :id)
    end


end