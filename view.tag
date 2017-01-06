<view>
  <h3>{ message }</h3>
  
  <ul>
    <li each={ i in message }>{ i }</li>
  </ul>
  
  <script>
    
    var self = this;
    
    marmottajax({
        url: 'data.json',
        json: true
      
    }).success(function(result) {
        self.message = result;
        self.update();
      
    });
    
  </script>
  <style>
    :scope { font-size: 2rem }
    h3 { color: #444 }
    ul { color: #999 }
  </style>
</view>
