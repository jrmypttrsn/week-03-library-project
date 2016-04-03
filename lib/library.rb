
# + branch_name
# + address
# + phone_number

class Library < ActiveRecord::Base
  
  validates :branch_name, presence: true
  validates :branch_name, uniqueness: true
  validates :address, presence: true
  validates :address, uniqueness: true
  validates :phone_number, presence: true
  validates :phone_number, uniqueness: true

  has_many :staff_members
  has_many :books

  def view_library_records
    puts "#{id}. Branch Name: #{branch_name}"
    puts "Address: #{address}"
    puts "Phone Number: #{phone_number}"
  end

  # def all_library_records
  # 	puts "#{id}. Branch Name: #{branch_name}"
  #   puts "Address: #{address}"
  #   puts "Phone Number: #{phone_number}"
  #   puts "Staff Members: #{staff_members}"
  #   puts "Books: #{books}"  	
  # end

end