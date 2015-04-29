class AddFieldsToInvestigation < ActiveRecord::Migration
  def change
    add_column :investigations, :comments, :text
  end
end
