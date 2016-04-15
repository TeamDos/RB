class RenameLeaderboardToLeaderbords < ActiveRecord::Migration
  def change
  	rename_table :leaderboard, :leaderboards
  end
end
