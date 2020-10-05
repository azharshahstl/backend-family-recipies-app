class Cuisine < ApplicationRecord
    has_many :recipes
    validates :kind, presence: true
end
