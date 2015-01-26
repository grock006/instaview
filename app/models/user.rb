class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :favorite_location, type: String
  has_many :favorites

  has_secure_password 

  validates :email, uniqueness: true
  validates :password, confirmation: true
end
