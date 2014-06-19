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
	beta1_os1: BETA
	beta2_os1: BETA
	retail_os1: RETAIL
	dev1 : DEVELOPER
	user1 : USER

feature {NONE} -- Events

	on_prepare
			-- Create test fixtures
		do
			create company.withname ("Test Company")
			create os1.withname ("Linux")
			create os2.withname ("Unix")
			create retail_os1.withOsAndNr (os1,11)
			create beta1_os1.withOsAndNr (os1,1)
			create beta2_os1.withOsAndNr (os1,2)

			create dev1.withName("John Carmack")
			create user1.withName("DAU")
		end
end


