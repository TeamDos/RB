class CreateGamedata < ActiveRecord::Migration
  def change
    create_table :gamedata do |t|
      t.integer :user_id
      t.string :username
      #can't decide either to keep username or get rid of it
      t.integer :score

      t.timestamps null: false
    end
  end
end
