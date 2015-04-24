class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :social
      t.string :email
      t.string :address
      t.string :line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :company
      t.text :comments
      t.string :dob
      t.boolean :typeOfApplication

      t.timestamps null: false
    end
  end
end
