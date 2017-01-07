<dashboard>
    <div if={show}>
      <h1>대쉬보드</h1>
      <ul>
        <li><a href="#/page1">pag1 1 이동</a></li>
        <li><a href="#/page2">pag1 2 이동</a></li>
        <li><a href="#/apps/123">app #123 이동</a></li>
      </ul>
    </div>
  <script>
    var self = this;

		var localRoute = route.create();
    
		localRoute(function () {
		self.show = false;
		self.update();
		});
    
		localRoute('/', function () {
		self.show = true;
		self.update();
		});
    
  </script>
</dashboard>