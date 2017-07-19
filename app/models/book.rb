class Book < ApplicationRecord
  
  validates :title, :genre, :author, { presence: true }


end
