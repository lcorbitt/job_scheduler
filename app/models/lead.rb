class Lead < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  # STATUSES:
  #
  # LEAD      = 0
  # PROSPECT  = 1
  # APPROVED  = 2
  # COMPLETED = 3
  # INVOICED  = 4
  # CLOSED    = 5

end