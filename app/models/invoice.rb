class Invoice < ApplicationRecord
    belongs_to :user
    validates :vendor_taxID, :vendor_title, :vendor_address, presence: true
    has_many :vendors
end