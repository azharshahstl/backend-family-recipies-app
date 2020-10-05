class RecipeSerializer < ActiveModel::Serializer
  attributes :name, :id, :user_id, :ingredients, :directions, :cuisine
  belongs_to :user
end
