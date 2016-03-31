
# + branch_name
# + address
# + phone_number

class Library < ActiveRecord::Base
  
  validates :branch_name, presence: true
  validates :address, presence: true
  validates :phone_number, numericality: { only_integer: true }

end