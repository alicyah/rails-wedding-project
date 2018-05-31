class Supplier < ApplicationRecord
  belongs_to :service
  has_many :bundle_lines
  has_many :supplier_areas
  has_many :reviews
  has_many :availabilities
  has_many :images
  has_many :areas, through: :supplier_areas
  has_many :users, through: :reviews
  validates :owner, :description, :email, presence: true
  validates :address, :capacity, presence: true, if: :is_a_place?
  monetize :price_cents
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # include PgSearch

  # pg_search_scope :search_by_price_category_address_capacity,
  #   against: [ :price, :category, :address, :capacity ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
  private

  def is_a_place?
    return self.service.category == "place"
  end
end
