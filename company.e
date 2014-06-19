note
	description: "Summary description for {COMPANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMPANY

create
	withName

feature -- Member variables

	name: STRING
		-- Name of the compnay

	products: LINKED_LIST [OPERATINGSYSTEM]
		-- Companies only sell operating systems

feature {NONE} -- Initialization

	withName(companyName: STRING)
		-- Initialize company with the given name

	require
		not companyName.is_empty
	do
		name := companyName
		create products.make
	end


invariant
	name /= Void
	products /= Void
	
end
