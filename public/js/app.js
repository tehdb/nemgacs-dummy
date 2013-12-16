(function() {
  var app;

  app = angular.module("nemgacs", []);

  app.constant('settings', {});

  app.controller("MainCntrl", [
    "$scope", "settings", function(scope, sttgs) {
      return scope.message = 'and dynamic content from main controller';
    }
  ]);

  app.directive("example", [
    function() {
      return {
        restrict: 'A',
        scope: true,
        templateUrl: '/partials/example.tpl.html',
        link: function(scope, element, attrs) {}
      };
    }
  ]);

}).call(this);
