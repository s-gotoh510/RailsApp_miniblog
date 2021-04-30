class Bloggenre < ApplicationRecord
  has_many :blogposts
  
  validates :name, presence: { message: 'は必須項目です。' }
end
