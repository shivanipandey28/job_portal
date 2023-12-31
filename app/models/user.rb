class User < ApplicationRecord
  has_many :jobs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
          enum role: { user: "user", client: "client"}
    validates :role, presence: true
end
