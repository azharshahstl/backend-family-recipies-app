class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :isLoggedIn
  has_many :recipes
end
