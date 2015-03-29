(function() {


"use strict";


function FormCtrl($scope, $sce) {
  $scope.notification = {
    class: null,
    visible: false,
    message: null
  };
  $scope.repoName = null;
  $scope.repoUrl = null;
  $scope.repoKey = null;
  $scope.button = {
    enabled: true,
    text: "Register"
  };

  $scope.registerApplication = function() { };

}


angular.module("RegisterApp", [])
  .controller("FormCtrl", ["$scope", "$sce", FormCtrl]);


})();
