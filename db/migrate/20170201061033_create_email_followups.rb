class CreateEmailFollowups < ActiveRecord::Migration
  def change
    create_table :email_followups do |t|
      t.integer :campaign_followup_id
      t.integer :contact_id

      t.timestamps null: false
    end
  end
end
