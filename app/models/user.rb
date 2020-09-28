class User < ApplicationRecord
    has_secure_password
    has_many :recipies 
    validates :name, :email, presence: true 
    validates :email, uniqueness: true

end
