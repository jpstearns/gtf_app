class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :badge_num
      t.string :social
      t.string :client_id
      t.string :status
      t.string :licensetype
      t.string :positionOfApplication
      t.string :renewal

      t.timestamps null: false
    end
  end
end
