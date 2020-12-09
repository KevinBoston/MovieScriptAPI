class MovieSerializer

    def initialize(movie_object)
        @movies = movie_object
    end

    def to_serialized_json
        options = {
            include: { movie: {
                only: [:title, :starring, :description, :link]
            }, except: [:updated_at]}
        }
        @movies.to_json(options)
    end

end
