class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.string :first_name
      t.string :last_name
      t.number :social
      t.date :dob
      t.string :previous_employer
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.number :zip
      t.string :comments

      t.timestamps null: false
    end
  end
end
