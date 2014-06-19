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
end


