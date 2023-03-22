# frozen_string_literal: true

class Creditcard < ApplicationRecord
     belongs_to :user
     belongs_to :vendor
     validates :user, presence: true
     validates :vendor_id, presence: true
end
