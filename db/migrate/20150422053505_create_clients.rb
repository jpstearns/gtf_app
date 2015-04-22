class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_phone
      t.string :client_email
      t.string :client_address
      t.string :client_address2
      t.string :client_state
      t.string :client_zip

      t.timestamps null: false
    end
  end
end
