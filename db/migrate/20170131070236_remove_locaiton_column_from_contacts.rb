class RemoveLocaitonColumnFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :locaiton
  end
end
