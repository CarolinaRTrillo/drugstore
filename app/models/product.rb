class Product < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  validates :name, :price, :details, presence: true

end
