class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand, optional: true
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :shipping_date
  belongs_to_active_hash :burden

  enum status: {published: 0, stopped: 1, trading: 2, sold: 3}
  
  validates :images, length: { minimum: 1, maximum: 10 }
end

