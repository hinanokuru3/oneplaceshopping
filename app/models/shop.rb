class Shop < ApplicationRecord
  belongs_to :shopping_center, class_name: 'ShoppingCenter'
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, allow_blank: true, length: { maximum: 50 }
  validates :opening_hours, length: { maximum: 50 }, allow_blank: true
  validates :regular_holiday, length: { maximum: 50 }, allow_blank: true
  validates :floor, length: { maximum: 50 }, allow_blank: true
  validates :phone_number,  numericality: { only_integer: true },allow_blank: true, format: {with: /\A\d{10,11}\z/}
  validates :category, length: { maximum: 20 }, allow_blank: true
  validates :payment_method, length: { maximum: 50 }, allow_blank: true


end

