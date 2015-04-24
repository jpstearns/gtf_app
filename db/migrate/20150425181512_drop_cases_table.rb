class DropCasesTable < ActiveRecord::Migration
  def change
  	drop_table :cases
  end
end
