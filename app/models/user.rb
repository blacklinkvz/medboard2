class User < ApplicationRecord
  has_secure_password

  belongs_to :country
  belongs_to :bloodtype
  belongs_to :usertype
end
