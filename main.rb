require_relative "config/environment.rb"
require "active_record"
require "pry"
require "yaml"
require_relative "lib/book.rb"
require_relative "lib/library.rb"
require_relative "lib/patron.rb"
require_relative "lib/staff_member.rb"

# require statements

# Index
# Show
# New / Create
# Edit / Update
# Destroy

# main menu
# - sub-menus


def main_menu
  choice = ""

  while choice != "exit"
  
    puts "_______Dead Guy Library System\u2122_______"
    puts "______________Main Menu______________"
    puts "Select one of the following options: "
    puts "1. Library branches"
    puts "2. Staff members"
    puts "3. Books"
    puts "4. Patrons"
    puts "Exit: Exit "
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2" && choice != "3" && 
    	choice != "4" && choice != "exit"
      print "That is not a valid option. Try again: "
      choice = gets.chomp.downcase
    end

    if choice == "1"
      puts "You chose to visit the Dead Guy Library System\u2122 Branches menu"
      libraries_menu # method call
    elsif choice == "2"
      puts "You chose to view Dead Guy Library System\u2122 staff members"
      staff_members_menu
    elsif choice == "3"
    	puts "You chose to view Dead Guy Library System\u2122 books"
    	books_menu
    elsif choice == "4"
    	puts "You chose to view Dead Guy Library System\u2122 patrons"
    	patrons_menu
    elsif choice == "exit"
    end
  end
end

def libraries_menu
  choice = ""

  while choice != "back"
    puts "\n\n\nDead Guy Library System\u2122 Branches Main Menu"
    puts "1. View all library branches"
    puts "2. Create a new library"
    puts "Back: head back to the main menu"
    print "What is your choice? "
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2" && choice != "back"
      print "Sorry, that's invalid. Try again: "
      choice = gets.chomp.downcase
    end

    if choice == "1"
      puts "You chose to view all library branches"
      library_records
    elsif choice == "2"
      puts "You chose to create a new library"
    elsif choice == "back"
      puts "Back to the main menu"
    end
  end
end

def library_records
  choice = ""

  while choice != "back"
  puts "\n\n\nAll Dead Guy Library System\u2122 Branches:"
  Library.all.each do |l|
  	puts l.view_library_records
  end

  puts "\nPlease select one of the following options:\n1. Select a library\n"\
  "Back. Go back to Library Menu\n\n >>"
  choice = gets.chomp.downcase
  
  if choice == "1"
      Library.find_by_id(1)
    elsif choice == "2"
      Library.find_by_id(2)
    elsif choice == "back"
      puts "Back to the main menu"
    end
  end

end

def staff_members_menu
	choice = ""

  while choice != "back"
    puts "\n\n\nDead Guy Library System\u2122 Staff Members Main Menu"
    puts "1. View all staff members"
    puts "2. Create a new staff member"
    puts "Back: head back to the main menu"
    print "What is your choice? "
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2" && choice != "back"
      print "Sorry, that's invalid. Try again: "
      choice = gets.chomp.downcase
    end

    if choice == "1"
      puts "You chose to view all staff members"
      staff_member_records
    elsif choice == "2"
      puts "You chose to create a new staff member"
      # create_new_staff_member
    elsif choice == "back"
      puts "Back to the main menu"
    end
  end
end

def staff_member_records
	choice = ""

	while choice != "back"
	puts "\n\n\nAll Dead Guy Library System\u2122 Staff Members:"
	StaffMember.all.each do |s|
		puts s.view_staff_member_records
		end
	end
end

# def create_new_staff_member
	
# end
# end

# def books_menud
	
# end

# def patrons_menu
# end

# this is where our driver actually starts

puts "\n\n\nWelcome to the Dead Guy Library System\u2122\nPlease whisper.\n\n"
main_menu
puts "Goodbye"

binding.pry
