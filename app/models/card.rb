class Card < ApplicationRecord
  validates :title, presence: { message: 'は入力必須項目です。' }
  validates :author, presence: { message: 'は入力必須項目です。' }
  validates :price, presence: {message: 'は入力必須項目です。'}, numericality: {message: 'は数字で入力してください。'}
  validates :publisher, presence: {message: 'は入力必須項目です。'}
  validates :memo, presence: {message: 'は入力必須項目です。'}
  
  belongs_to :user
end
