class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.integer :cuisine_id
      t.string :ingredients
      t.string :directions

      t.timestamps
    end
  end
end
