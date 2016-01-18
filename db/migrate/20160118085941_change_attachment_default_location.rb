class ChangeAttachmentDefaultLocation < ActiveRecord::Migration
  def change
  	change_column_default :Images, :attachment, "no image"
  end
end
