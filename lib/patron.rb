# + name
# + email

class Patron < ActiveRecord::Base
  
  validates :name, presence: true
  validates :email, presence: true
  validates :emali, uniqueness: true

  has_many :books
end