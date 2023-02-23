# frozen_string_literal: true

json.extract!(invoice, :id, :vendor_id, :tax_id_number, :address, :city, :state,
              :zip, :payment_method, :notes, :created_at, :updated_at
)
json.url(invoice_url(invoice, format: :json))
