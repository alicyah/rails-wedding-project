class Service < ApplicationRecord$
  has_many :suppliers
  validates :category, presence: true, uniqueness: { scope: :name }
  validates :name, presence: true
end
