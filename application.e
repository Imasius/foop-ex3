note
	description : "mouse_race_management application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			company: COMPANY
			name: STRING
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")

			create name.make_empty
			create company.withName (name)
		end

end
