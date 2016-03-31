# + name
# + email

class Book < ActiveRecord::Base
  
  validates :name, presence: true
  validates :email, presence: true
  validates :emali, uniqueness: true

end