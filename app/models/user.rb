class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
    
  validates :auth_token, presence: true

  has_many :posts

  def ensure_auth_token
    unless self.auth_token
      self.auth_token = User.generate_token
    end
  end

  def self.generate_token
    token = SecureRandom.hex
    while User.exists?(auth_token: token)
      token = SecureRandom.hex
    end
    token
  end
end