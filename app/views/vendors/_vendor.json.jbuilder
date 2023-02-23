# frozen_string_literal: true

json.extract!(vendor, :id, :vendor_name, :street_address, :city, :state, :zip_code, :email,
              :phone_number, :tax_id, :created_at, :updated_at
)
json.url(vendor_url(vendor, format: :json))
