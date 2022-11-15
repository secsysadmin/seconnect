class Creditcard < ApplicationRecord
    belongs_to :user
    belongs_to :vendor
    has_one_attached :file
    validates :file, presence: true
    validates :user, presence: true
    validates :vendor_id, presence: true
end
