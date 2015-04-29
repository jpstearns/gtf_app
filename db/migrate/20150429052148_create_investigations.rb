class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.integer :applicant_id
      t.integer :client_id
      t.string :user_badge_number
      t.string :status
      t.date :renewal
      t.text :comments

      t.timestamps null: false
    end
  end
end
