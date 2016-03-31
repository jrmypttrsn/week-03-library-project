
# + title
# + author
# + ISBN

class Book < ActiveRecord::Base
  
  validates :title, presence: true
  validates :author, presence: true
  validates :ISBN, presence: true

end