class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.integer :applicant_id
      t.integer :user_badge_number
      t.integer :client_id
      t.string :status
      t.date :renewal

      t.timestamps null: false
    end
  end
end
