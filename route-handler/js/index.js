var logger = function (ctx, next, page) {
  console.log(ctx.canonicalPath);
	next();
};

var routes = [
  {
    route: '*',
    use: logger
  },
  {
    route: '/',
    tag: 'main'
  },
  {
    route: '/board',
    tag: 'board',
    routes: [{
      route: '/free',
      tag: 'free'
    }]
  },
  {
    route: '/main/:name',
    tag: 'main'
  },
  {
    route: '*',
    tag: 'main'
  }
];

riot.mount('*', {
  routes: routes,
  routeroptions: { hashbang: true }
});