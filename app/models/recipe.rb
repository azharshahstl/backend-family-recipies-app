class Recipe < ApplicationRecord
    belongs_to :user 
    validates :ingredients, :directions, :cuisine, presence: true

end
