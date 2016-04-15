class RenameUserScoresToLeaderboard < ActiveRecord::Migration
  def change
  	rename_table :user_scores, :leaderboard
  end
end
