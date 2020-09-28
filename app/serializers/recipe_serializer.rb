class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :ingredients, :directions, :cuisine
  belongs_to :user
end
