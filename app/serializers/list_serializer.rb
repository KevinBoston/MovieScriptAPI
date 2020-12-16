class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :color, :movies
end
