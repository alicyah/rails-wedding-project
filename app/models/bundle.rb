class Bundle < ApplicationRecord
  belongs_to :user
  validates :starts_on, :end_on, presence: true
  validates :state, presence: true, inclusion: { in: ['pending', 'cancelled', 'paid', 'confirmed', 'refunded', 'completed'] }
  # confirmed = payment accpeted + boooking confirmed
  # cancelled = after payment if user wants to retract
  # completed = after wedding when user wants to add a review
end