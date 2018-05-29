class Image < ApplicationRecord
  belongs_to :supplier
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end
