/**
 * This is the product controller used for retrieving all the data from the /FrontEnd/products/all
 * 
 * 
 */
app.controller('productController',function($scope,$http)
		{
			$http.get('/FrontEnd/products/all').then(function(response)
					{
				$scope.productDetails=response.data;
				console.log($scope.productDetails);
					});
			
		});