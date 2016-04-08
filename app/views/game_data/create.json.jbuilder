 json.user @user, :username
 json.attachment @images.attachment, :caption, :img_content_type, :img_file_name, :img_file_size
# json.array! @user, :username, :score # => please ask brit If this will pull all the users and their scores?
