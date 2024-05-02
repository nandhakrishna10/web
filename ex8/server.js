<!DOCTYPE html>
<html ng-app="CalculatorApp">
<head>
    <title>Calculator App</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script>
        var app = angular.module('CalculatorApp', []);

        app.controller('CalculatorController', function($scope, $http) {
            $scope.calculate = function() {
                var url = '/calculate/' + $scope.operator + '?first=' + $scope.firstOperand + '&second=' + $scope.secondOperand;
                $http.get(url)
                    .then(function(response) {
                        $scope.answer = response.data.result;
                    });
            };
        });
    </script>
</head>
<body>
    <div ng-controller="CalculatorController">
        <input type="number" ng-model="firstOperand">
        <select ng-model="operator">
            <option value="add">+</option>
            <option value="subtract">-</option>
            <option value="multiply">*</option>
            <option value="divide">/</option>
        </select>
        <input type="number" ng-model="secondOperand">
        <button ng-click="calculate()">Calculate</button>
        <p>Answer: {{ answer }}</p>
    </div>
</body>
</html>
