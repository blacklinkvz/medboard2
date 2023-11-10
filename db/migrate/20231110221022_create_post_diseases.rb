class CreatePostDiseases < ActiveRecord::Migration[7.1]
  def change
    create_table :post_diseases do |t|
      t.references :post, null: false, foreign_key: true
      t.references :disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
