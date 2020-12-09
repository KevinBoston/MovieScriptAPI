class MoviesController < ApplicationController

    def index
        movies = Movie.all
        render json: MovieSerializer.new(movies)
    end

    def show
        list = List.find_by(params[:id])
        movies = list.movies
        render json: MovieSerializer.new(movies)
    end

    



end
