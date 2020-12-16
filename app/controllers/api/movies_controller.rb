class Api::MoviesController < ApplicationController

    def index
        movies = Movie.all
        render json: MovieSerializer.new(movies)
    end

    def create
        movie = Movie.new(movie_params)
        if movie.save
            render json: MovieSerializer.new(movie), status: :accepted
        else
            render json: {errors: movie.errors.full_messages}, status: :unprocessed
        end
    end

    private
    def movie_params
        params.require(:movie).permit(:title, :starring, :description, :list_id, :url, :notes) 
    end


end
