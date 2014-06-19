note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	SIMPLE_TEST_SET

inherit
	EQA_TEST_SET

feature -- Test routines

	company_name_test
			-- New test routine
		note
			testing:  "SIMPLE"
		local
			company: COMPANY
		do
			create company.withname ("Test Company")
			assert ("Compnay has wrong name", company.name.is_equal ("Test Company"))
		end

	retail_double_insert_test
			-- Tries to create 2 retail versions for the same OS
		note
			testing: "SIMPLE"
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


