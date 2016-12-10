(function () {
  "use strict";

  angular.module("app").controller("actorsCtrl", function($scope, $http) {
    $http.get('http://localhost3000/api/v1/themoviedb_data.json').then(function (response) {
      $scope.results =  response.data;
      console.log(response.data);
    });
  });
})();
