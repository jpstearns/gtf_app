class CreateInvestigations < ActiveRecord::Migration
  def change
    create_table :investigations do |t|

      t.timestamps null: false
    end
  end
end
