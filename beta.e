note
	description: "Summary description for {BETA}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BETA

inherit
	VERSION
		redefine
			priceFor
	end

create
	withOsAndNr


feature -- buying methods

	priceFor(person : DEVELOPER) : Real
	do
		Result := 5
	end
end
