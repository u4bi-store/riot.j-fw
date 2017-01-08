<show-app>
  <div if={show}>
    <h1>쇼앱 {id}</h1>
    <p>
      <a href="#/">뒤로가기</a>
    </p>
  </div>
  <script>
    var self = this;
    var localRoute = route.create();

    localRoute(function () {
      self.show = false;
      self.update();
    });

    localRoute('/apps/*', function (id) {
      self.show = true;
      self.id = id;
      self.update();
    });
    
  </script>
</show-app>