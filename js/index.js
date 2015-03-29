(function() {
"use strict";


function BannerCtrl($scope) {
  $scope.numRepos = 0;
}


angular.module("IndexApp", [])
  .controller("BannerCtrl", ["$scope", BannerCtrl]);


})(); // closure
