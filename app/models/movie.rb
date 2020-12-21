class Movie < ApplicationRecord
    belongs_to :list
    validates :title, presence: true
    validates :starring, presence: true
    
end
