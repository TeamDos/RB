class Image < ActiveRecord::Base

  has_attached_file :img
  validates_attachment_content_type :img, content_type: {
                          content_type: /\Aimage\/.*\Z/}
  validates_attachment_file_name :img, matches: [/png\Z/, /jpe?g\Z/]
  # do_not_validate_attachment_file_type :img
  validates_presence_of :user_id

  belongs_to :user
  #validates :category, inclusion : {}
end
