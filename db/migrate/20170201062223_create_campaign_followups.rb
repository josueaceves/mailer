class CreateCampaignFollowups < ActiveRecord::Migration
  def change
    create_table :campaign_followups do |t|
      t.integer :campaign_id

      t.timestamps null: false
    end
  end
end
