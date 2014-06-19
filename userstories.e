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

	expectedFail_os_double_retail
			-- Tries to create 2 retail versions for the same OS
		note
			testing: "EXPECTED_FAIL"
		local
			retail: RETAIL
		do
				create retail.withOsAndNr (os1, 1)
		end

	expectedFail_VersionPriceForUser
			-- Tries to get a version-price of a beta-version for a default-user
		note
			testing: "EXPECTED_FAIL"
		local
			os : OPERATINGSYSTEM
			version : VERSION
			price : Real
		do
			os := company.osfromname ("Linux")
			version := os.versionfromnr (1)
			price := version.pricefor (user1)
		end

	expectedFail_Age_Precondition_Not_That_Strong
			-- ..
		note
			testing: "EXPECTED_FAIL"
		local
			person : PERSON
		do
			person := dev1;
			person.setage (19)
		end

end


