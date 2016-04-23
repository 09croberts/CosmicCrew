class AddExtraFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :dob, :date
    remove_column :users, :name, :string
  end
end
