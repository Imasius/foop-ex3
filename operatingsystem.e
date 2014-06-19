note
	description: "Summary description for {OPERATINGSYSTEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERATINGSYSTEM

feature -- Member variables

	name: STRING
		-- Name of the operating system

feature {NONE} -- Initialization

	withName(systemName: STRING)
		-- Initialize operating system with the given name

	require
		not systemName.is_empty
	do
		name := systemName
	end


invariant
	name /= Void

end
