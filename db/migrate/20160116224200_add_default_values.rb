class AddDefaultValues < ActiveRecord::Migration
  def change
  	change_column_default :Images, :attachment, "image-not-found.png"
  	change_column_default :Images, :body_type, "Not specified"
  end
end
