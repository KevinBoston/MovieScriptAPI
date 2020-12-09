class MoviesController < ApplicationController

    def index
        movies = Movie.all
        render json: movies, include: [:title, :starring, :description]
    end

    def show
        user = User.find_by(params[:id])
        movies = user.movies
        render json: movies, include: [:title, :starring, :description]
    end
    


end
