class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :ingredients, :directions, :cuisine
  belongs_to :user

end
