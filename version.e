note
	description: "Summary description for {VERSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VERSION

feature {NONE}

	withOperatingSystem(system: OPERATINGSYSTEM)
	do
		operatingSystem := system
		system.addVersion (Current)
	end

feature {RETAIL}

	operatingSystem: OPERATINGSYSTEM
		-- The operating system this version is attached too

end
