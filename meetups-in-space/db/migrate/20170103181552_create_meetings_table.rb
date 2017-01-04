class CreateMeetingsTable < ActiveRecord::Migration
  def change
    create_table :meetings do |meeting_header|
      meeting_header.string :meeting_id, null: false
      meeting_header.string :meeting_name, null: false
      meeting_header.string :description, null: false
      meeting_header.string :location, null: false

      meeting_header.timestamps null: false
    end

    add_index :meetings, [:meeting_id], unique: true
  end

end
