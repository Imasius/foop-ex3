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
		retailCreated := false
	end

feature {VERSION} -- Version functionality

	addVersion(version: VERSION)
	do
		versions.extend (version)
	end

feature -- Access versions

	versionFromNr(nr : INTEGER) : VERSION
	require
		hasVersionNr(nr)
	local
		found : VERSION
	do
		found := versions.first

		from
			versions.start
		until
			versions.exhausted
		loop
			if versions.item.nr = nr then
				found := versions.item
			end
		end

		Result := found
	ensure
		Result /= VOID
	end

	hasVersionNr(nr : INTEGER) : BOOLEAN
	require
		nr > 0
	local
		found : BOOLEAN
	do
		found := FALSE

		from
			versions.start
		until
			versions.exhausted or found
		loop
			if versions.item.nr = nr then
				found := true
			end
		end

		Result := found
	end

feature {RETAIL}

	retailCreated: BOOLEAN
		-- Denotes if there is a retail version for this operating system

	createRetail
	require
		not retailCreated
	do
		retailCreated := true
	end

invariant
	name /= Void
	versions /= Void

end
