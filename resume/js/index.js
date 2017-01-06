marmottajax({
    url: 'model/resume.json',
    json: true
  
}).success(function(result) {
    riot.mount('resume', {data: result} );
});