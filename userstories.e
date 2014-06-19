note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	USERSTORIES

inherit
	ABSTRACT_TEST

feature -- Test routines

	os_double_retail
			-- Tries to create 2 retail versions for the same OS
		note
			testing: "USERSTORY"
		local
			system: OPERATINGSYSTEM
			retail1: RETAIL
			retail2: RETAIL
			ex: BOOLEAN
			failure: BOOLEAN
		do

			if not ex then
				create system.withname ("MyOS")
				create retail1.withoperatingsystem (system)

				create retail2.withoperatingsystem (system)
				failure := true
				assert("Should not be reached.", false)
			end
		rescue
			if not failure then
				ex := true
				retry
			end
		end

end


