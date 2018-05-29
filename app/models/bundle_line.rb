class BundleLine < ApplicationRecord
  belongs_to :supplier
  belongs_to :bundle
end
