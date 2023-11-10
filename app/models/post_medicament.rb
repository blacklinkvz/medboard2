class PostMedicament < ApplicationRecord
  belongs_to :post
  belongs_to :medicament
end
