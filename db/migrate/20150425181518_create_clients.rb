class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :clientName
      t.string :clientPhone
      t.string :clientEmail
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
