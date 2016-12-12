(function () {
  "use strict";

  angular.module("app").controller("actorsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/themoviedb_data.json").then(function(response) {
        $scope.results = response.data;
        $scope.bpMovies = $scope.results.results;
      });
    };

    $scope.decade = function(decade) {
      $scope.movies = [];
      angular.forEach($scope.bpMovies, function(movie) {
        if (movie.release_date.includes(decade)) {
          $scope.movies.push(movie);
        }
      });
    };

  });
})();
