class User < ActiveRecord::Base
	validates :first_name, :presence => true
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create
end
