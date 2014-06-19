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

	withOsAndNr(system: OPERATINGSYSTEM; new_nr: INTEGER)
	require
		system /= VOID
		new_nr > 0
	do
		operatingSystem := system
		nr := new_nr
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
