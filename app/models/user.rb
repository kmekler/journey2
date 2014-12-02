 class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :email

  validates_presence_of :email, :password_digest

  has_many :markers

  has_many :journals

end