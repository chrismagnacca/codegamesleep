var blog = angular.module('blog', ['ngResource']);

blog.controller('FooterCtrl', ['$scope', function ($scope) {
    var date = new Date;
    $scope.year = date.getFullYear();
}]);

blog.controller('PostsCtrl', ['$scope', 'Post', function ($scope, Post) {
    $scope.heading = 'Blog';
    $scope.posts = Post.query();

}]);

blog.factory('Post', ['$resource', function ($resource) {
    return $resource('/posts/index');
}]);