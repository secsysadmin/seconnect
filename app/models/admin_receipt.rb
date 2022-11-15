class AdminReceipt < ApplicationRecord
    belongs_to :user
    has_many :vendor
end
