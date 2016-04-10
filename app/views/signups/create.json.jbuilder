json.user do
  json.user_name @user.user_name
  json.auth @user.auth_token
end