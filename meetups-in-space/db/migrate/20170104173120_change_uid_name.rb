class ChangeUidName < ActiveRecord::Migration
  def change
    rename_column :users, :uid, :user_id
  end
end
