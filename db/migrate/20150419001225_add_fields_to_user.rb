fclass AddFieldsToUser < ActiveRecord::Migration
  def change
  	    add_column :users, :first_name, :string
        add_column :users, :last_name, :string
        add_column :users, :badge_number, :string
        add_column :users, :phone_number, :number
        add_column :users, :desk_extenstion, :number
        add_column :users, :rank, :string

  end
end
