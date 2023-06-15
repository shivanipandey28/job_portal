class Client < ApplicationRecord
	has_many :jobs, dependent: :destroy
	validates :name, :company_name,:contact_no, :email, presence: true
end
