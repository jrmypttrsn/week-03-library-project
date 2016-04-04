# + name
# + email

class StaffMember < ActiveRecord::Base
  
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  belongs_to :library

  def view_staff_member_records
    puts "#{id}. Name: #{name}"
    puts "Email Address: #{email}"
  end
end