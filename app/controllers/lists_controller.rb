class ListsController < ApplicationController

    def show
        list = List.find_by(id: params[:id])
        movies = list.movies
        render json: MovieSerializer.new(movies).to_serialized_json    
    end

end