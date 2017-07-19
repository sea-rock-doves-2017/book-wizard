class Genre < ApplicationRecord
  has_many :books

  validates :type, presence: true, uniqueness: true
end
