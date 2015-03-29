(function() {


"use strict";


function ListCtrl($scope) {
  $scope.repos = [];
}


angular.module("ReposApp", [])
  .controller("ListCtrl", ["$scope", ListCtrl]);


})();
