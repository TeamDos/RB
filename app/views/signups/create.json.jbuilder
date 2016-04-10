json.user do
  json.username @user.username
  json.auth @user.auth_token
end