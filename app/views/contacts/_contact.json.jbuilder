json.extract! contact, :id, :name, :lastname, :email, :phone, :country_id, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
