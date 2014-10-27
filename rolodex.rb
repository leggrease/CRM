require "pry"

class Rolodex
attr_reader :contacts
@@index = 1000

	def initialize
		@contacts = []
	end

	def find(id)
		@found = @contacts.select{|contact| contact.id == id }.first
	end

	def add_contact(contact)
		contact.id = @@index
		@@index += 1
		@contacts << contact
	end

	def delete_contact(id_delete)
		@contacts.delete_if{|contact| contact.id == id_delete}
	end

	def modify_contact(change)
		case change
		when "first name"
			puts "New first name: "
			@found.first_name = gets.chomp
		when "last name"
			puts "New last name: "
			@found.last_name = gets.chomp
		when "email"
			puts "New email: "
			@found.email = gets.chomp
		when "note"
			puts "New notes: "
			@found.note = gets.chomp
		else
			puts "Error use a specified command"
		end
	end

	def display_attribute(attribute)
		case attribute
		when "first name"
			puts @found.first_name
		when "last name"
			puts @found.last_name
		when "email"
			puts @found.email
		when "note"
			puts @found.note
		else 
			puts "Error use a specified command"
		end
	end

		
end

# rolo1 = Rolodex.new
# rolo2 = Rolodex.new

# #add 3 contacts to both
# #Class Variable
# @@index = 1006

# #instance Variable
# @index = 1003