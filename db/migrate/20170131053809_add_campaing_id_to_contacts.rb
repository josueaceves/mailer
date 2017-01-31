class AddCampaingIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :campaign_id, :integer
  end
end
