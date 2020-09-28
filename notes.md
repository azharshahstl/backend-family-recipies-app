User 
    has_many: recipies 
    name: string 
    email: string
    password_digest: string 

Recipe
    belongs_to: user 
    user_id: integer
    ingredients: string 
    directions: string 
    cuisine: string 

 