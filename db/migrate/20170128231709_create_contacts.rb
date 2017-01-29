class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :industry
      t.string :description
      t.string :notes
      t.string :email
      t.string :company
      t.string :job_title
      t.string :locaiton

      t.timestamps null: false
    end
  end
end
