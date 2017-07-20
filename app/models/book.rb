class Book < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :genre

  validates :title, :author, { presence: true }

  def self.search(search)
    Book.where()
  end

end
