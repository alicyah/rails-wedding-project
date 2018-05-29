class Area < ApplicationRecord
  before_validation :validation_area

  private

  def validation_area
    if country.nil? && region.nil? && department.nil? && city.nil?
      errors.add(:country, "Specify at least a country")
    end
  end
end
