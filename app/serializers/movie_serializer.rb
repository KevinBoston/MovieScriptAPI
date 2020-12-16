class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :starring, :description, :url, :list_id, :notes
end
