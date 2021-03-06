class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.text :contact_help
      t.text :contact_notes
      t.string :contact_status
      t.timestamps
    end
  end
end
