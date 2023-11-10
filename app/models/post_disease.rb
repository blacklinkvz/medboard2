class PostDisease < ApplicationRecord
  belongs_to :post
  belongs_to :disease
end
