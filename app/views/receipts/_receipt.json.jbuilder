# frozen_string_literal: true

json.extract!(receipt, :user_id, :vendor_id, :details,  :created_at, :updated_at
)
json.url(receipt_url(receipt, format: :json))
