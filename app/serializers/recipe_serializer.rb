class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :ingredients, :directions, :cuisine

end
