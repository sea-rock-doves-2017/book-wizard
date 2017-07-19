class User < ApplicationRecord
  has_many :reviews
  has_many :books, through: :reviews
  validates :username, :email, { presence: true, uniqueness: true }
  validates :password, presence: true
  has_secure_password
end
