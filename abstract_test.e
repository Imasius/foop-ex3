note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	ABSTRACT_TEST

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Fixtures

	company: COMPANY
	os1: OPERATINGSYSTEM
	os2: OPERATINGSYSTEM
	retail_os1: RETAIL

feature {NONE} -- Events

	on_prepare
			-- Create test fixtures
		do
			create company.withname ("Test Company")
			create os1.withname ("Linux")
			create os2.withname ("Unix")
			create retail_os1.withoperatingsystem (os1)
		end
end


