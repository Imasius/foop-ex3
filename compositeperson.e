note
	description: "Summary description for {COMPOSITEPERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMPOSITEPERSON

inherit
	PERSON
		redefine
			withName
		end

create
	withName

feature

	roles: LINKED_LIST [PERSON]

feature {NULL}

	withName(personName: STRING)
	do
		Precursor(personName)
		create roles.make
	end

end
