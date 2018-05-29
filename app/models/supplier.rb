class Supplier < ApplicationRecord
  belongs_to :service
  has_many :reviews
  has_many :images
  validates :owner, :description, :email, presence: true
  validates :address, :capacity, presence: true, if: :is_a_place?

  private

  def is_a_place?
    return self.service.category == "place"
  end
end
