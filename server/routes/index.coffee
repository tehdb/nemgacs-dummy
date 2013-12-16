exports.index = () ->
	return (req, res) ->
		res.render("index", {
			title : "nemgacs dummy"
		})
