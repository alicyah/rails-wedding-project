class Supplier < ApplicationRecord
  belongs_to :service
  has_many :bundle_lines
  has_many :supplier_areas
  has_many :reviews
  has_many :availabilities
  has_many :areas, through: :supplier_areas
  has_many :users, through: :reviews
  validates :owner, :description, :email, presence: true
  validates :address, :capacity, presence: true, if: :is_a_place?

  private

  def is_a_place?
    return self.service.category == "place"
  end
end
