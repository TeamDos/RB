class CreateGameData < ActiveRecord::Migration
  def change
    create_table :game_data do |t|
      t.attachment :image
      t.string :caption

      t.timestamps null: false
  end
 end
end