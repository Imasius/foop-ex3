note
	description: "Summary description for {RETAIL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RETAIL

inherit
	VERSION
		redefine
			withOperatingSystem,
			priceFor
		end

create
	withOperatingSystem

feature {NULL}

	withOperatingSystem(system: OPERATINGSYSTEM)
	do
		operatingSystem := system
		system.createRetail
		system.addVersion (Current)
	end

feature -- buying methods

	priceFor(person : PERSON) : Real
	do
		Result := 10
	end
end
