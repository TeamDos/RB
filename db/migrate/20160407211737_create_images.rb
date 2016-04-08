class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :img
      t.string :caption
	# t.timestamps null: false
  	end
  end
end  