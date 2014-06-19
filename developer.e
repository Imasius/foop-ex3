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

create
	withName
	
feature
	default_age : INTEGER = 21


end
