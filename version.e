note
	description: "Summary description for {VERSION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VERSION

feature

	nr: INTEGER
	-- The number of the version

feature {NONE}

	withOperatingSystem(system: OPERATINGSYSTEM)
	do
		operatingSystem := system
		system.addVersion (Current)
	end

feature {RETAIL}

	operatingSystem: OPERATINGSYSTEM
		-- The operating system this version is attached too

feature -- buying methods

	priceFor(person : PERSON) : Real
	require
		person /= VOID
	deferred
	end

end
