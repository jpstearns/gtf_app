class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
