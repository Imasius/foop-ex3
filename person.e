note
	description: "Summary description for {PERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PERSON

feature {NULL} -- Initialization

	withName(personName: String)
	require
		personName /= Void
		not personName.is_empty
	do
		name := personName
	end

feature

	name: STRING
		-- name of the person

end
