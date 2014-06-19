note
	description: "Summary description for {PERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PERSON

feature {NONE} -- Initialization

	withName(personName: String)
	require
		personName /= Void
		not personName.is_empty
	do
		name := personName
		p_age := default_age
	end

feature {NONE} -- private variables

	p_age : INTEGER

feature

	name: STRING
	default_age : INTEGER = 18

	age : INTEGER
	do
		Result := p_age
	end
	setAge (new_age : INTEGER)
	require
		new_age >= default_age
	do
		p_age := new_age
	end

		-- name of the person

end
