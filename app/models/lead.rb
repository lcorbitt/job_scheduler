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

  # Creates the ActiveRecord::Enum mappings between the attribute values and
  # their associated database integers. Also creates a constant for each value.
  #
  # To add a new value, add it to the **end** of the hash, incrementing the integer.
  #
  # Do **NOT** remap any existing attributes or integers.
  #
  # @see https://api.rubyonrails.org/v5.2/classes/ActiveRecord/Enum.html
  #
  ENUM_STATUS_VALUE_MAPPINGS = {
    lead: 0,
    prospect: 1,
    approved: 2,
    completed: 3,
    invoiced: 4,
    closed: 5
  }.each_key do |subject|
    const_set(subject.upcase, subject)
  end

	enum status: ENUM_STATUS_VALUE_MAPPINGS

end
