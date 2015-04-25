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
      t.date :renewal
      t.string :applicant_name
      t.string :applicant_dob
      t.string :applicant_social
      t.string :caseNumber
      t.string :gaming_license_number
      t.string :location
      t.datetime :assigned_date
      t.datetime :closed_date
      t.string :user_badge_number

      t.timestamps null: false
    end
  end
end
