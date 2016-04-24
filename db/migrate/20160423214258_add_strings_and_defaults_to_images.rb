class AddStringsAndDefaultsToImages < ActiveRecord::Migration
  def change
  	add_column :Images, :title, :string
  	add_column :Images, :description, :string
  	change_column_default :Images, :attachment, "no_image"
  	change_column_default :Images, :body_type, "Not specified"
  end
end
