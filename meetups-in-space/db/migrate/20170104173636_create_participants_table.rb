class CreateParticipantsTable < ActiveRecord::Migration
  def change
    create_table :participants do |participant|
      participant.integer :meeting_id, null: false
      participant.integer :user_id, null: false
    end
  end
end
