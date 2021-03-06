class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.datetime :published_at
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
