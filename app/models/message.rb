class Message < ApplicationRecord
  belongs_to :student
  belongs_to :user
  belongs_to :teacher
end
