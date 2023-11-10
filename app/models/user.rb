class User < ApplicationRecord
  belongs_to :country
  belongs_to :bloodtype
  belongs_to :usertype
end
