User 
    has_many: recipies 
    name: string 
    email: string
    password_digest: string 

Recipe
    belongs_to: user 
    ingredients: string 
    directions: string 
    cuisine: string 
    
