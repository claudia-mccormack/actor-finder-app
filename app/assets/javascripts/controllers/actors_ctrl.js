(function () {
  "use strict";

  angular.module("app").controller("actorsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/themoviedb_data.json").then(function(response) {
        $scope.message = "Angular is working";
        $scope.movies = response.data;
        $scope.bpMovies = $scope.movies.results;
        console.log($scope.bpMovies);
      });
    };
  });
})();
