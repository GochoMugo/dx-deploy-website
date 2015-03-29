(function() {


"use strict";


function FormCtrl($scope, $sce) {
  $scope.notification = {
    class: null,
    visible: false,
    message: null
  };
  $scope.repoName = null;
  $scope.repoKey = null;
  $scope.button = {
    enabled: true,
    text: "Register"
  };

  $scope.deregisterRepo = function() { };

}


angular.module("DeregisterApp", [])
  .controller("FormCtrl", ["$scope", "$sce", FormCtrl]);


})();
