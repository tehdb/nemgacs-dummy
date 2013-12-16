app.directive( "example", [ () ->
	restrict: 'A'
	scope : true
	templateUrl : '/partials/example.tpl.html'
	link : (scope, element, attrs ) ->


])
