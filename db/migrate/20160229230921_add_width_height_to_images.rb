class AddWidthHeightToImages < ActiveRecord::Migration
  def change
  	add_column :Images, :width, :integer
  	add_column :Images, :height, :height
  end
end
