class Recipe < ApplicationRecord
    belongs_to :user 
    validates :name, :ingredients, :directions, :cuisine, presence: true

end
