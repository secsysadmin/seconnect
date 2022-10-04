# frozen_string_literal: true

json.extract!(user, :id, :first_name, :last_name, :street_address, :city, :state, :zip_code, :uin,
              :email, :phone_number, :committee_id, :permission_type, :created_at, :updated_at
)
json.url(user_url(user, format: :json))
