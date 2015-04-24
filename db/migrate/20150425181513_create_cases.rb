class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
    	t.string :typeOfCase
    	t.integer :user_id
    	t.integer :applicant_id
    	t.integer :client_id
    	t.string :status
    	t.string :licenseType
    	t.string :position
    	t.datetime :renewal
        t.string :name
        t.datetime :date_of_birth
        t.string :social
        t.string :case_number
        t.string :gaming_license_number
        t.string :location
        t.datetime :assigned_date
        t.datetime :closed_date
    end
  end
end
