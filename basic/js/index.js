marmottajax({
    url: 'model/main.json',
    json: true
  
}).success(function(result) {
    riot.mount('main', {data: result} );
});