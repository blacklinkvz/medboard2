json.extract! user, :id, :name, :s_name, :lastname, :s_lastname, :rut, :passport, :email, :password_digest, :country_id, :bloodtype_id, :usertype_id, :created_at, :updated_at
json.url user_url(user, format: :json)
