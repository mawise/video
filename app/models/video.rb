class Video < ApplicationRecord
  has_one_attached :blob
  paginates_per 10
end
