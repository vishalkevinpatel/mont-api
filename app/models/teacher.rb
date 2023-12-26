class Teacher < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :students
  has_many :messages
  has_many :attendances
end
