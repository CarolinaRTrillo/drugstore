class Product < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  validates :name, :price, :details, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :name, :details ],
                  associated_against: {
                    user: [ :email, :name ]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
