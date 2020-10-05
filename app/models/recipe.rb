class Recipe < ApplicationRecord
    belongs_to :user 
    belongs_to :cuisine
    validates :name, :ingredients, :directions, presence: true

end
