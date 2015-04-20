class DropInvestigationsTable < ActiveRecord::Migration
  def up
    drop_table :investigations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
