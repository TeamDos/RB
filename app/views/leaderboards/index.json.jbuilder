<<<<<<< HEAD:app/views/leaderboards/index.json.jbuilder
json.leaderboards @leaderboards do |leaderboard|
	json.username leaderboard.username
	json.score leaderboard.score
end
=======
json.leaderboards @leaderboard do |leaderboard|
	json.username leaderboards.username
	json.score leaderboards.score
end	
>>>>>>> master:app/views/leaderboard/create.json.jbuilder
