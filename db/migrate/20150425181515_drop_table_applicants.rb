class DropTableApplicants < ActiveRecord::Migration
  def change
  	drop_table :applicants
  end
end
