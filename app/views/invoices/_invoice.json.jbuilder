json.extract! invoice, :id, :vendor_title, :tax_id_number, :address, :city, :state, :zip, :payment_method, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
