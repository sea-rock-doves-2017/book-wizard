class User < ApplicationRecord
  has_many :books
  validates :username, :email, { presence: true, uniqueness: true }
  validates :hashed_password, presence: true
end
