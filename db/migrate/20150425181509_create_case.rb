class CreateCase < ActiveRecord::Migration
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
    end
  end
end
