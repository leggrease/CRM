class Rolodex
attr_reader :contacts
@@index = 1000

	def initialize
		@contacts = []
	end

	def add_contact(contact)
		contact.id = @@index
		@@index += 1
		@contacts << contact
	end

	def delete_contact(id_delete)
		@contacts.delete_if{|contact| contact.id == id_delete}
	end
end

# rolo1 = Rolodex.new
# rolo2 = Rolodex.new

# #add 3 contacts to both
# #Class Variable
# @@index = 1006

# #instance Variable
# @index = 1003