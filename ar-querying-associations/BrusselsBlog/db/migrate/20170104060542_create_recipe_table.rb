class CreateRecipeTable < ActiveRecord::Migration
  def change
    create_table :recipes do |table|
      table.integer :recipe_id, null: false
      table.text :body, null: false

      table.timestamps null: false
    end
  end
end
