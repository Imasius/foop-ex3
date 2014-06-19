note
	description: "Summary description for {OPERATINGSYSTEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERATINGSYSTEM

create
	withName

feature -- Member variables

	name: STRING
		-- Name of the operating system

	versions: LINKED_LIST [VERSION]
		-- Multiple versions. Only one retail.

feature {NONE} -- Initialization

	withName(systemName: STRING)
		-- Initialize operating system with the given name

	require
		not systemName.is_empty
	do
		name := systemName
		create versions.make
	end


invariant
	name /= Void
	
end
