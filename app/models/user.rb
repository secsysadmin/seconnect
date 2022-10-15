# frozen_string_literal: true

class User < ApplicationRecord
     #has_secure_password
     validates :first_name, presence: true
     validates :last_name, presence: true
     validates :committee_id, presence: true
     validates :permission_type, presence:true
     # https://stackoverflow.com/questions/13203159/rails-has-one-and-belongs-to-with-presence-validation-on-both-foreign-keys
     has_many :request
       if Rails.env.test?
	    belongs_to :committee, optional: true
	  else
	    belongs_to :committee
	  end
end
