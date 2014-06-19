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

feature -- Access operating system

	osFromName(osName : STRING) : OPERATINGSYSTEM
	require
		hasOsName(osName)
	local
		found : OPERATINGSYSTEM
	do
		found := products.first

		from
			products.start
		until
			products.exhausted
		loop
			if products.item.name = osName then
				found := products.item
			end
		end

		Result := found
	ensure
		Result /= VOID
	end

	hasOsName(osName : STRING) : BOOLEAN
	require
		osName /= VOID
		NOT osName.is_empty
	local
		found : BOOLEAN
	do
		found := FALSE

		from
			products.start
		until
			products.exhausted or found
		loop
			if products.item.name = osName then
				found := true
			end
		end

		Result := found
	end


invariant
	name /= Void
	products /= Void

end
