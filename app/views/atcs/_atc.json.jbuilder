# frozen_string_literal: true

json.extract!(atc, :id, :vendor_id, :contact_name, :phone, :email, :purchase_info, :amount, :notes,
              :created_at, :updated_at, :event_name, :event_date, :sop
)
json.url(atc_url(atc, format: :json))
