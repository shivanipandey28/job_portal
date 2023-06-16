class Client < ApplicationRecord
  validates :name, :company_name,:contact_no, :email, presence: true
end
