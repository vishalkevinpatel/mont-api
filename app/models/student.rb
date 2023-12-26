class Student < ApplicationRecord
  has_many :messages
  belongs_to :user
  belongs_to :teacher
  has_many :attendances
end
