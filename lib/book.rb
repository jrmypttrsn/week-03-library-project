
# + title
# + author
# + ISBN

class Book < ActiveRecord::Base
  
  validates :title, presence: true
  validates :author, presence: true
  validates :ISBN, presence: true
  validates :ISBN, uniqueness: true
end