class CreateGallery < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :street, null: false
      t.string :zip, null: false
      t.string :description
    end
  end
end
