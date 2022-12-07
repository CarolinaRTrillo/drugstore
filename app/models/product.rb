class Product < ApplicationRecord
  belongs_to :user
  validates :name, :price, :details, presence: true
end
