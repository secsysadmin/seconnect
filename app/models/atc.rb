class Atc < ApplicationRecord
    belongs_to :vendor
    has_one_attached :file
    validates :status, presence: false
    validates :file, presence: true
end
