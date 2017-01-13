class AddLikesToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :likes, :integer
  end
end
