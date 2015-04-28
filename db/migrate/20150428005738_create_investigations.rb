class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.integer :user_id
      t.integer :applicant_id
      t.integer :client_id
      t.string :status
      t.string :license_typ
      t.string :position
      t.date   :renewal
      t.timestamps null: false
    end
  end
end
