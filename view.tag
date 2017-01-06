<view>
  <h3>{ message }</h3>
  
  <ul>
    <li each={ i in message }>{ i }</li>
  </ul>
  
  <script>
    
    var self = this;
    
    marmottajax({
        url: "data.json",
        json: true
    }).success(function(result) {
        self.message = result;
        self.update();
    });
    
  </script>
</view>
