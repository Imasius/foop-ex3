note
	description: "Summary description for {DEVELOPER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DEVELOPER

inherit
	PERSON
		redefine
			default_age
	end

feature
	default_age : INTEGER = 21

create
	withName

end
