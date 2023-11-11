class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :s_name
      t.string :lastname
      t.string :s_lastname
      t.string :rut
      t.string :passport
      t.string :email
      t.string :password_digest
      t.references :country, null: false, foreign_key: true
      t.references :bloodtype, null: false, foreign_key: true
      t.references :usertype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
