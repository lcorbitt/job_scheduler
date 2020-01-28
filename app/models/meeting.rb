class Meeting < ApplicationRecord
  belongs_to :user
  has_one :lead
end
