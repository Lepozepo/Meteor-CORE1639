Router.map ->
	@route "home",
		template:"landing"
		path:"/"

	if Meteor.isServer
		@route '*',
			where:"server"
			load: ->
				@response.writeHead(404)
				@response.end()

	if Meteor.isClient
		@route '*',
			template:"not_found"
