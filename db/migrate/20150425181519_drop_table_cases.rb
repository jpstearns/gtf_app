class DropTableCases < ActiveRecord::Migration
  def change
  	drop_table :cases
  end
end
