class Creditcard < ApplicationRecord
    belongs_to :user
    belongs_to :vendor
    has_one_attached :file
    validates :status, presence: true
end
