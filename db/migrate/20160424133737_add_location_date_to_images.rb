class AddLocationDateToImages < ActiveRecord::Migration
  def change
  	add_column :Images, :location, :string, :default => "Unknown location"
  	add_column :Images, :date, :date
  end
end
