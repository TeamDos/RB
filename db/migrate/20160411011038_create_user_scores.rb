class CreateUserScores < ActiveRecord::Migration
  def change
    create_table :user_scores do |t|
      t.string :username
      t.integer :score
    end
  end
end
