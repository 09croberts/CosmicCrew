class CreateImageTable < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string  :body_type
    	t.integer :width
    	t.integer :height
    	t.string  :attachment
    	t.integer :user_id

    	t.timestamps null: false
    end
  end
end
