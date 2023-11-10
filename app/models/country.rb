class Country < ApplicationRecord
  belongs_to :continent
  belongs_to :language
end
