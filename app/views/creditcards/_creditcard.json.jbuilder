# frozen_string_literal: true

json.extract!(creditcard, :id, :user_id, :vendor, :payment_link, :phone, :Confirmation_order,
              :reservation_name, :status, :google_drive_link, :created_at, :updated_at, :travel_password_cc, :amount, :contact_name, :sop, :res_ph, :res_under, :res_from_date, :res_to_date
)
json.url(creditcard_url(creditcard, format: :json))
