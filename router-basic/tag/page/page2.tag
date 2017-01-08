<page2>
  <div if={show}>
    <h1>페이지 2</h1>
    <p>
      <a href="#/">뒤로가기</a>
    </p>
  </div>
  
  <script>
    var self = this
    var localRoute = route.create();
    
    localRoute(function () {
      self.show = false;
      self.update();
    });
    
    localRoute('/page2', function () {
      self.show = true;
      self.update();
    });

  </script>
</page2>