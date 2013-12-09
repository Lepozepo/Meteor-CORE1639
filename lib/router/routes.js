Router.map(function(){
	this.route("home",{
		template:"landing",
		path:"/"
	});

	this.route('*',{
		where:"server",
		load: function(){
			this.response.writeHead(404);
			this.response.end();
		}
	});
});