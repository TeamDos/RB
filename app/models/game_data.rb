class GameData < ActiveRecord::Base
  belongs_to :user_id

  #has_attached_file :image
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_presene_of :user_id
  #validates :category, inclusion : {}
end
