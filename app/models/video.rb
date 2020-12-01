class Video < ApplicationRecord
  has_one_attached :blob
  paginates_per 3
end
