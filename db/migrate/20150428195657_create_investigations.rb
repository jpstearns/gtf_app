class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.string :user_badge_number
      t.string :applicant_social
      t.integer :client_id
      t.string :user_id
      t.date :renewal
      t.string :status

      t.timestamps null: false
    end
  end
end
