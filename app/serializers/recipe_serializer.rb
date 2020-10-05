class RecipeSerializer < ActiveModel::Serializer
  attributes :name, :id, :user_id, :ingredients, :directions
  belongs_to :user
end
