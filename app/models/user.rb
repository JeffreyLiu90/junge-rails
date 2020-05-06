class User < ActiveRecord::Base
  
  has_secure_password

  validates :email, case_sensitive: false, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :password, presence: true, length: { minimum: 2 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    downcase_email = email.downcase
    user = User.find_by(email: downcase_email)
    user && user.authenticate(password)

  end



