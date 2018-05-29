class SupplierArea < ApplicationRecord
  belongs_to :area
  belongs_to :supplier
end
