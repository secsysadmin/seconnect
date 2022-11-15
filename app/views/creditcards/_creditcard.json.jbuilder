# frozen_string_literal: true

json.extract!(creditcard, :id, :user_id, :vendor, :payment_link, :phone, :Confirmation_order,
              :reservation_name, :status, :notes, :created_at, :updated_at
)
json.url(creditcard_url(creditcard, format: :json))
