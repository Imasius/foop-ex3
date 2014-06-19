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
			withOsAndNr,
			priceFor
		end

create
	withOsAndNr

feature {NONE}

	withOsAndNr(system: OPERATINGSYSTEM; new_nr: INTEGER)
	do
		nr := new_nr
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
