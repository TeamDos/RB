class Leaderboard < ActiveRecord::Base
  validates :username, presence: true
end