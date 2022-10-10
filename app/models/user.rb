# frozen_string_literal: true

class User < ApplicationRecord
     has_secure_password
     validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
     validates :first_name, :last_name, :street_address, :city, :state, 
               :zip_code, :uin, :email, :password, :phone_number, :committee_id, :permission_type, presence:true
     # https://stackoverflow.com/questions/13203159/rails-has-one-and-belongs-to-with-presence-validation-on-both-foreign-keys
     has_many :request
     belongs_to :committee
end
