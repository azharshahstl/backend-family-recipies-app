class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :ingredients, :directions, :cuisine
end
