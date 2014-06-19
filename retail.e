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
			withOperatingSystem
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
end
