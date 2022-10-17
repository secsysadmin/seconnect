# frozen_string_literal: true

json.extract!(invoice, :vendor_title, :vendor_ids, :vendor_address, :vendor_city,:vendor_state,:vendor_zip,:vendor_paymentmethod, :created_at, :updated_at)
json.url(invoice_url(invoice, format: :json))
