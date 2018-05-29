class Supplier < ApplicationRecord
  has_many :bundle_line
  has_many :supplier_area
  belongs_to :service
  validates :owner, :description, :email, presence: true
  validates :address, :capacity, presence: true, if: :is_a_place?

  private

  def is_a_place?
    return self.service.category == "place"
  end
end
