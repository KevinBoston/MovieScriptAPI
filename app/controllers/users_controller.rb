class UsersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        movies = user.movies
        render json: MovieSerializer.new(movies).to_serialized_json    
    end

end